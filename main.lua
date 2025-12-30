local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local Library = {
	Vars = {}
}

function Library.new(tb)
	local Window = {
		Top = {},
		Center = {},
		TabButtons = {},
		DialogFrame = {}
	}

	Window["1"] = Instance.new("ScreenGui", game.CoreGui);
	Window["1"]["Name"] = [[UI]];
	Window["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

	Window["2"] = Instance.new("Frame", Window["1"]);
	Window["2"]["BorderSizePixel"] = 0;
	Window["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	Window["2"]["Size"] = UDim2.new(0, 880, 0, 600);
	Window["2"]["Position"] = UDim2.new(0.19234, 0, 0.12848, 0);
	Window["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Window["2"]["Name"] = [[Window]];
	Window["2"]["Visible"] = false

	Window["3"] = Instance.new("UICorner", Window["2"]);
	Window["3"]["CornerRadius"] = UDim.new(0, 4);

	Window.Top["1"] = Instance.new("Frame", Window["2"]);
	Window.Top["1"]["BorderSizePixel"] = 0;
	Window.Top["1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	Window.Top["1"]["Size"] = UDim2.new(1, 0, 0, 40);
	Window.Top["1"]["Position"] = UDim2.new(0, 0, 0, 0);
	Window.Top["1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Window.Top["1"]["Name"] = [[Top]];
	Window.Top["1"]["BackgroundTransparency"] = 1;

	Window.Top["2"] = Instance.new("UICorner", Window.Top["1"]);

	Window.Top["3"] = Instance.new("TextLabel", Window.Top["1"]);
	Window.Top["3"]["BorderSizePixel"] = 0;
	Window.Top["3"]["TextSize"] = 16;
	Window.Top["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	Window.Top["3"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
	Window.Top["3"]["TextColor3"] = Color3.fromRGB(230, 230, 230);
	Window.Top["3"]["BackgroundTransparency"] = 1;
	Window.Top["3"]["Size"] = UDim2.new(0, 0, 0, 36);
	Window.Top["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Window.Top["3"]["Text"] = [[bloxforge]];
	Window.Top["3"]["LayoutOrder"] = 1;
	Window.Top["3"]["AutomaticSize"] = Enum.AutomaticSize.X;
	Window.Top["3"]["Name"] = [[Label]];
	Window.Top["3"]["Position"] = UDim2.new(0.03759, 0, 0.03659, 0);

	Window.Top["4"] = Instance.new("UIListLayout", Window.Top["1"]);
	Window.Top["4"]["Padding"] = UDim.new(0, 8);
	Window.Top["4"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
	Window.Top["4"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
	Window.Top["4"]["FillDirection"] = Enum.FillDirection.Horizontal;

	Window.Top["5"] = Instance.new("ImageLabel", Window.Top["1"]);
	Window.Top["5"]["BorderSizePixel"] = 0;
	Window.Top["5"]["ScaleType"] = Enum.ScaleType.Fit;
	Window.Top["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	Window.Top["5"]["Image"] = [[rbxassetid://127134291132189]];
	Window.Top["5"]["Size"] = UDim2.new(0.017, 10, 1.08, 0);
	Window.Top["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Window.Top["5"]["BackgroundTransparency"] = 1;
	Window.Top["5"]["Name"] = [[Logo]];
	Window.Top["5"]["Position"] = UDim2.new(0.002, 0, -0.02989, 0);

	Window.Top["6"] = Instance.new("UIPadding", Window.Top["1"]);
	Window.Top["6"]["PaddingRight"] = UDim.new(0, 8);
	Window.Top["6"]["PaddingLeft"] = UDim.new(0, 8);

	Window["4"] = Instance.new("UIStroke", Window["2"]);
	Window["4"]["Color"] = Color3.fromRGB(47, 57, 60);

	Window.Center["1"] = Instance.new("Frame", Window["2"]);
	Window.Center["1"]["BorderSizePixel"] = 0;
	Window.Center["1"]["BackgroundColor3"] = Color3.fromRGB(18, 21, 22);
	Window.Center["1"]["Size"] = UDim2.new(1, 0, 0.995, -40);
	Window.Center["1"]["Position"] = UDim2.new(-0, 0, 0.06931, 0);
	Window.Center["1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Window.Center["1"]["Name"] = [[Center]];
	Window.Center["1"]["BackgroundTransparency"] = 1

	Window.TabButtons["1"] = Instance.new("Frame", Window["2"]);
	Window.TabButtons["1"]["ZIndex"] = 3;
	Window.TabButtons["1"]["BorderSizePixel"] = 0;
	Window.TabButtons["1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	Window.TabButtons["1"]["Size"] = UDim2.new(1, 0, 0, 32);
	Window.TabButtons["1"]["Position"] = UDim2.new(0, 0, 0.949, -16);
	Window.TabButtons["1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Window.TabButtons["1"]["Name"] = [[TabButtons]];
	Window.TabButtons["1"]["BackgroundTransparency"] = 1;

	Window.TabButtons["2"] = Instance.new("UIListLayout", Window.TabButtons["1"]);
	Window.TabButtons["2"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
	Window.TabButtons["2"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
	Window.TabButtons["2"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
	Window.TabButtons["2"]["FillDirection"] = Enum.FillDirection.Horizontal;

	Window["5"] = Instance.new("UIGradient", Window["2"]);
	Window["5"]["Rotation"] = 90;
	Window["5"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(34, 40, 43)),ColorSequenceKeypoint.new(0.100, Color3.fromRGB(18, 21, 22)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(18, 21, 22))};

	Window["6"] = Instance.new("CanvasGroup", Window["2"]);
	Window["6"]["ZIndex"] = 2;
	Window["6"]["BorderSizePixel"] = 0;
	Window["6"]["BackgroundColor3"] = Color3.fromRGB(18, 21, 22);
	Window["6"]["Size"] = UDim2.new(1, 0, 0.09003, 0);
	Window["6"]["Position"] = UDim2.new(0, 0, 0.90714, 0);
	Window["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Window["6"]["Name"] = [[DownFade]];

	Window["7"] = Instance.new("UIGradient", Window["6"]);
	Window["7"]["Rotation"] = -90;
	Window["7"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.556, 0.45),NumberSequenceKeypoint.new(1.000, 1)};

	Window["8"] = Instance.new("UICorner", Window["6"]);

	Window.DialogFrame["1"] = Instance.new("TextButton", Window["2"]);
	Window.DialogFrame["1"]["Visible"] = false;
	Window.DialogFrame["1"]["ZIndex"] = 4;
	Window.DialogFrame["1"]["BorderSizePixel"] = 0;
	Window.DialogFrame["1"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
	Window.DialogFrame["1"]["Size"] = UDim2.new(1, 0, 0.93666, 0);
	Window.DialogFrame["1"]["Position"] = UDim2.new(0, 0, 0.06334, 0);
	Window.DialogFrame["1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Window.DialogFrame["1"]["Name"] = [[DialogFrame]];
	Window.DialogFrame["1"]["BackgroundTransparency"] = 0.3;
	Window.DialogFrame["1"]["Text"] = "";
	Window.DialogFrame["1"]["AutoButtonColor"] = false;

	Window.DialogFrame["2"] = Instance.new("Frame", Window.DialogFrame["1"]);
	Window.DialogFrame["2"]["BorderSizePixel"] = 0;
	Window.DialogFrame["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	Window.DialogFrame["2"]["AutomaticSize"] = Enum.AutomaticSize.XY;
	Window.DialogFrame["2"]["Size"] = UDim2.new(0, 200, 0, 46);
	Window.DialogFrame["2"]["Position"] = UDim2.new(0.39626, 0, 0.41116, 0);
	Window.DialogFrame["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Window.DialogFrame["2"]["Name"] = [[ElementDialog]];

	Window.DialogFrame["3"] = Instance.new("UICorner", Window.DialogFrame["2"]);
	Window.DialogFrame["3"]["CornerRadius"] = UDim.new(0, 4);

	Window.DialogFrame["4"] = Instance.new("UIStroke", Window.DialogFrame["2"]);
	Window.DialogFrame["4"]["Color"] = Color3.fromRGB(47, 57, 60);

	Window.DialogFrame["5"] = Instance.new("UIGradient", Window.DialogFrame["2"]);
	Window.DialogFrame["5"]["Rotation"] = 90;
	Window.DialogFrame["5"]["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0.000, Color3.fromRGB(34, 40, 43)),
		ColorSequenceKeypoint.new(0.979, Color3.fromRGB(18, 21, 22)),
		ColorSequenceKeypoint.new(1.000, Color3.fromRGB(18, 21, 22))
	};

	Window.DialogFrame["ElementContainer"] = Instance.new("Frame", Window.DialogFrame["2"]);
	Window.DialogFrame["ElementContainer"]["BorderSizePixel"] = 0;
	Window.DialogFrame["ElementContainer"]["BackgroundColor3"] = Color3.fromRGB(18, 21, 22);
	Window.DialogFrame["ElementContainer"]["AutomaticSize"] = Enum.AutomaticSize.XY;
	Window.DialogFrame["ElementContainer"]["Size"] = UDim2.new(1, 0, 0, 28);
	Window.DialogFrame["ElementContainer"]["Position"] = UDim2.new(0, 0, 0, 23);
	Window.DialogFrame["ElementContainer"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

	Window.DialogFrame["7"] = Instance.new("UIListLayout", Window.DialogFrame["ElementContainer"]);
	Window.DialogFrame["7"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

	Window.DialogFrame["8"] = Instance.new("UIPadding", Window.DialogFrame["2"]);
	Window.DialogFrame["8"]["PaddingBottom"] = UDim.new(0, 4);

	Window.DialogFrame["9"] = Instance.new("UIPadding", Window.DialogFrame["ElementContainer"]);
	Window.DialogFrame["9"]["PaddingTop"] = UDim.new(0, 4);

	Window.DialogFrame["Label"] = Instance.new("TextLabel", Window.DialogFrame["2"]);
	Window.DialogFrame["Label"]["BorderSizePixel"] = 0;
	Window.DialogFrame["Label"]["TextSize"] = 14;
	Window.DialogFrame["Label"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	Window.DialogFrame["Label"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	Window.DialogFrame["Label"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
	Window.DialogFrame["Label"]["TextColor3"] = Color3.fromRGB(168, 168, 168);
	Window.DialogFrame["Label"]["BackgroundTransparency"] = 1;
	Window.DialogFrame["Label"]["Size"] = UDim2.new(1, 0, 0, 24);
	Window.DialogFrame["Label"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Window.DialogFrame["Label"]["Text"] = [[dialog label]];
	Window.DialogFrame["Label"]["AutomaticSize"] = Enum.AutomaticSize.X;
	Window.DialogFrame["Label"]["Name"] = [[Label]];

	Window.DialogFrame["LabelPadding"] = Instance.new("UIPadding", Window.DialogFrame["Label"]);
	Window.DialogFrame["LabelPadding"]["PaddingRight"] = UDim.new(0, 32);
	Window.DialogFrame["LabelPadding"]["PaddingLeft"] = UDim.new(0, 8);

	Window.DialogFrame["CloseButton"] = Instance.new("TextButton", Window.DialogFrame["Label"]);
	Window.DialogFrame["CloseButton"]["BorderSizePixel"] = 0;
	Window.DialogFrame["CloseButton"]["TextSize"] = 14;
	Window.DialogFrame["CloseButton"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	Window.DialogFrame["CloseButton"]["BackgroundColor3"] = Color3.fromRGB(113, 70, 70);
	Window.DialogFrame["CloseButton"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
	Window.DialogFrame["CloseButton"]["Size"] = UDim2.new(0, 16, 0, 16);
	Window.DialogFrame["CloseButton"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Window.DialogFrame["CloseButton"]["Text"] = [[X]];
	Window.DialogFrame["CloseButton"]["Name"] = [[CloseButton]];
	Window.DialogFrame["CloseButton"]["Position"] = UDim2.new(1, 8, 0, 4);
	Window.DialogFrame["CloseButton"]["AutoButtonColor"] = false

	Window.DialogFrame["10"] = Instance.new("UIStroke", Window.DialogFrame["CloseButton"]);
	Window.DialogFrame["10"]["Color"] = Color3.fromRGB(185, 110, 110);
	Window.DialogFrame["10"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

	Window.DialogFrame["11"] = Instance.new("UICorner", Window.DialogFrame["CloseButton"]);
	Window.DialogFrame["11"]["CornerRadius"] = UDim.new(0, 4);

	Window.DialogFrame["12"] = Instance.new("UIStroke", Window.DialogFrame["2"]);
	Window.DialogFrame["12"]["Color"] = Color3.fromRGB(47, 57, 60);

	Window.DialogFrame["13"] = Instance.new("UIListLayout", Window.DialogFrame["1"]);
	Window.DialogFrame["13"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
	Window.DialogFrame["13"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
	Window.DialogFrame["13"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

	Window["9"] = Instance.new("UIScale", Window["1"]);

	Window.Tabs = {}
	Window.ActiveTab = nil

	local function switchTab(tabName)
		if Window.ActiveTab == tabName then
			return
		end

		local switchTweenInfo = TweenInfo.new(
			0.1,
			Enum.EasingStyle.Quad,
			Enum.EasingDirection.Out
		)

		local previousTab = Window.ActiveTab and Window.Tabs[Window.ActiveTab]

		for name, tabData in pairs(Window.Tabs) do
			if name == tabName then
				tabData.Tab.Visible = true

				local buttonActiveTween = TweenService:Create(tabData.Button, switchTweenInfo, {
					TextColor3 = Color3.fromRGB(230, 230, 230),
					BackgroundColor3 = Color3.fromRGB(37, 43, 46),
					BackgroundTransparency = 0
				})
				buttonActiveTween:Play()

				if Window.AnimateSections then
					task.spawn(function()
						Window.AnimateSections(tabData)
					end)
				end
			else
				if previousTab and previousTab.Tab == tabData.Tab then
					for _, child in ipairs(tabData.Left:GetChildren()) do
						if child:IsA("TextLabel") and child.Name == "Section" then
							local sectionContainer = child:FindFirstChild("Section")
							if sectionContainer then
								sectionContainer.Position = UDim2.new(0, 4, 1, 0)
								sectionContainer.BackgroundTransparency = 1
								child.TextTransparency = 1
								local stroke = sectionContainer:FindFirstChild("UIStroke")
								if stroke then
									stroke.Transparency = 1
								end
							end
						end
					end
					for _, child in ipairs(tabData.Right:GetChildren()) do
						if child:IsA("TextLabel") and child.Name == "Section" then
							local sectionContainer = child:FindFirstChild("Section")
							if sectionContainer then
								sectionContainer.Position = UDim2.new(0, 4, 1, 0)
								sectionContainer.BackgroundTransparency = 1
								child.TextTransparency = 1
								local stroke = sectionContainer:FindFirstChild("UIStroke")
								if stroke then
									stroke.Transparency = 1
								end
							end
						end
					end

					task.spawn(function()
						tabData.Tab.Visible = false
					end)
				else
					tabData.Tab.Visible = false
				end

				local buttonInactiveTween = TweenService:Create(tabData.Button, switchTweenInfo, {
					TextColor3 = Color3.fromRGB(155, 155, 155),
					BackgroundTransparency = 1
				})
				buttonInactiveTween:Play()
			end
		end

		Window.ActiveTab = tabName
	end


	function Window:newTab(label)
		if type(label) ~= "string" then
			print("invalid value of tab, need string")
			return
		end

		if Window.Tabs[label] then
			print("Tab with label '" .. label .. "' already exists")
			return
		end

		Library["Vars"][label] = {}

		local Tab = Instance.new("ScrollingFrame", Window.Center["1"])
		Tab.Active = true
		Tab.ScrollingDirection = Enum.ScrollingDirection.Y
		Tab.BorderSizePixel = 0
		Tab.CanvasSize = UDim2.new(0, 0, 0, 0)
		Tab.Name = "Tab"
		Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Tab.AutomaticCanvasSize = Enum.AutomaticSize.Y
		Tab.Size = UDim2.new(1, -8, 1.013, -10)
		Tab.ScrollBarImageColor3 = Color3.fromRGB(77, 83, 87)
		Tab.Position = UDim2.new(0, 4, 0, 0)
		Tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Tab.ScrollBarThickness = 4
		Tab.BackgroundTransparency = 1

		local Left = Instance.new("Frame", Tab)
		Left.BorderSizePixel = 0
		Left.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		Left.AutomaticSize = Enum.AutomaticSize.Y
		Left.Size = UDim2.new(0.5, -8, 0, 100)
		Left.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Left.Name = "Left"
		Left.BackgroundTransparency = 1

		local LeftPadding = Instance.new("UIPadding", Left)
		LeftPadding.PaddingTop = UDim.new(0, 4)
		LeftPadding.PaddingLeft = UDim.new(0, 4)
		LeftPadding.PaddingBottom = UDim.new(0, 52)

		local LeftLayout = Instance.new("UIListLayout", Left)
		LeftLayout.Padding = UDim.new(0, 8)
		LeftLayout.SortOrder = Enum.SortOrder.LayoutOrder

		local Right = Instance.new("Frame", Tab)
		Right.BorderSizePixel = 0
		Right.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		Right.AutomaticSize = Enum.AutomaticSize.Y
		Right.Size = UDim2.new(0.5, -8, 0, 100)
		Right.Position = UDim2.new(0.5, 0, 0, 0)
		Right.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Right.Name = "Right"
		Right.BackgroundTransparency = 1

		local RightPadding = Instance.new("UIPadding", Right)
		RightPadding.PaddingTop = UDim.new(0, 4)
		RightPadding.PaddingLeft = UDim.new(0, 4)
		RightPadding.PaddingBottom = UDim.new(0, 52)

		local RightLayout = Instance.new("UIListLayout", Right)
		RightLayout.Padding = UDim.new(0, 8)
		RightLayout.SortOrder = Enum.SortOrder.LayoutOrder

		local TabButtonContainer = Window.TabButtons["1"]:FindFirstChild("Tab")
		if not TabButtonContainer then
			TabButtonContainer = Instance.new("Frame", Window.TabButtons["1"])
			TabButtonContainer.BorderSizePixel = 0
			TabButtonContainer.BackgroundColor3 = Color3.fromRGB(29, 34, 36)
			TabButtonContainer.AutomaticSize = Enum.AutomaticSize.X
			TabButtonContainer.Size = UDim2.new(0, 100, 0, 32)
			TabButtonContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TabButtonContainer.Name = "Tab"

			local TabButtonStroke = Instance.new("UIStroke", TabButtonContainer)
			TabButtonStroke.Color = Color3.fromRGB(47, 57, 60)

			local TabButtonCorner = Instance.new("UICorner", TabButtonContainer)
			TabButtonCorner.CornerRadius = UDim.new(0, 4)

			local TabButtonLayout = Instance.new("UIListLayout", TabButtonContainer)
			TabButtonLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			TabButtonLayout.Padding = UDim.new(0, 8)
			TabButtonLayout.VerticalAlignment = Enum.VerticalAlignment.Center
			TabButtonLayout.SortOrder = Enum.SortOrder.LayoutOrder
			TabButtonLayout.FillDirection = Enum.FillDirection.Horizontal

			local TabButtonPadding = Instance.new("UIPadding", TabButtonContainer)
			TabButtonPadding.PaddingRight = UDim.new(0, 8)
			TabButtonPadding.PaddingLeft = UDim.new(0, 8)

			local TabButtonGradient = Instance.new("UIGradient", TabButtonContainer)
			TabButtonGradient.Rotation = 90
			TabButtonGradient.Color = ColorSequence.new{
				ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),
				ColorSequenceKeypoint.new(1.000, Color3.fromRGB(174, 174, 174))
			}
		end

		local Button = Instance.new("TextButton", TabButtonContainer)
		Button.BorderSizePixel = 0
		Button.TextSize = 14
		Button.AutoButtonColor = false
		Button.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
		Button.AutomaticSize = Enum.AutomaticSize.X
		Button.Size = UDim2.new(0, 0, 0, 24)
		Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Button.Text = label
		Button.Name = label
		Button.TextTransparency = 1

		local ButtonCorner = Instance.new("UICorner", Button)
		ButtonCorner.CornerRadius = UDim.new(0, 4)

		local ButtonPadding = Instance.new("UIPadding", Button)
		ButtonPadding.PaddingRight = UDim.new(0, 4)
		ButtonPadding.PaddingLeft = UDim.new(0, 4)

		Button.MouseButton1Click:Connect(function()
			switchTab(label)
		end)

		Window.Tabs[label] = {
			Tab = Tab,
			Left = Left,
			Right = Right,
			Button = Button
		}

		if not Window.ActiveTab then
			switchTab(label)
		else
			Tab.Visible = false
			Button.TextColor3 = Color3.fromRGB(155, 155, 155)
			Button.BackgroundTransparency = 1
		end

		task.spawn(function()
			task.wait(0.075)
			local buttonTweenInfo = TweenInfo.new(
				0.1,
				Enum.EasingStyle.Quad,
				Enum.EasingDirection.Out
			)

			local buttonTween = TweenService:Create(Button, buttonTweenInfo, {
				TextTransparency = 0
			})
			buttonTween:Play()
		end)

		local sectionCounter = 0
		local sections = {}

		local TabObject = {
			Left = Left,
			Right = Right,
			Sections = sections
		}

		function TabObject:newSection(label)
			if type(label) ~= "string" then
				print("invalid value of section, need string")
				return
			end

			sectionCounter = sectionCounter + 1
			local isLeft = (sectionCounter % 2 == 1)
			local parent = isLeft and self.Left or self.Right

			local SectionLabel = Instance.new("TextLabel", parent)
			SectionLabel.ZIndex = 2
			SectionLabel.BorderSizePixel = 0
			SectionLabel.TextSize = 14
			SectionLabel.TextXAlignment = Enum.TextXAlignment.Left
			SectionLabel.TextYAlignment = Enum.TextYAlignment.Top
			SectionLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SectionLabel.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
			SectionLabel.TextColor3 = Color3.fromRGB(142, 142, 142)
			SectionLabel.BackgroundTransparency = 1
			SectionLabel.Size = UDim2.new(1, 0, -0.01613, 24)
			SectionLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SectionLabel.Text = label
			SectionLabel.AutomaticSize = Enum.AutomaticSize.Y
			SectionLabel.Name = "Section"
			SectionLabel.TextTransparency = 1

			local SectionLabelPadding = Instance.new("UIPadding", SectionLabel)

			local finalPosition = UDim2.new(0, 4, 0, 24)
			local SectionContainer = Instance.new("Frame", SectionLabel)
			SectionContainer.BorderSizePixel = 0
			SectionContainer.BackgroundColor3 = Color3.fromRGB(29, 34, 36)
			SectionContainer.AutomaticSize = Enum.AutomaticSize.Y
			SectionContainer.Size = UDim2.new(1, -8, -0.806, 0)
			SectionContainer.Position = UDim2.new(0, 4, 1, 0)
			SectionContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SectionContainer.Name = "Section"
			SectionContainer.BackgroundTransparency = 1

			local SectionLayout = Instance.new("UIListLayout", SectionContainer)
			SectionLayout.Padding = UDim.new(0, 2)
			SectionLayout.SortOrder = Enum.SortOrder.LayoutOrder

			local SectionCorner = Instance.new("UICorner", SectionContainer)
			SectionCorner.CornerRadius = UDim.new(0, 4)

			local SectionStroke = Instance.new("UIStroke", SectionContainer)
			SectionStroke.Color = Color3.fromRGB(47, 57, 60)
			SectionStroke.Transparency = 1

			local SectionPadding = Instance.new("UIPadding", SectionContainer)
			SectionPadding.PaddingTop = UDim.new(0, 4)
			SectionPadding.PaddingBottom = UDim.new(0, 4)

			local SectionGradient = Instance.new("UIGradient", SectionContainer)
			SectionGradient.Rotation = 90
			SectionGradient.Color = ColorSequence.new{
				ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),
				ColorSequenceKeypoint.new(1.000, Color3.fromRGB(174, 174, 174))
			}

			table.insert(sections, {
				Container = SectionContainer,
				Label = SectionLabel,
				Stroke = SectionStroke,
				FinalPosition = finalPosition,
				Index = sectionCounter
			})

			local SectionObject = {
				Container = SectionContainer,
				Label = SectionLabel
			}

			function SectionObject:newToggle(label, defaultState, callback)
				if type(label) ~= "string" then
					print("invalid value of toggle label, need string")
					return
				end

				defaultState = defaultState or false

				local ToggleLabel = Instance.new("TextButton", self.Container)
				ToggleLabel.BorderSizePixel = 0
				ToggleLabel.TextSize = 14
				ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left
				ToggleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ToggleLabel.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
				ToggleLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
				ToggleLabel.BackgroundTransparency = 1
				ToggleLabel.Size = UDim2.new(1, 0, 0, 24)
				ToggleLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ToggleLabel.Text = label
				ToggleLabel.Name = "Toggle"
				ToggleLabel.AutoButtonColor = false
				ToggleLabel.Text = ""

				local ToggleTextLabel = Instance.new("TextLabel", ToggleLabel)
				ToggleTextLabel.BorderSizePixel = 0
				ToggleTextLabel.TextSize = 14
				ToggleTextLabel.TextXAlignment = Enum.TextXAlignment.Left
				ToggleTextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ToggleTextLabel.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
				ToggleTextLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
				ToggleTextLabel.BackgroundTransparency = 1
				ToggleTextLabel.Size = UDim2.new(1, 0, 1, 0)
				ToggleTextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ToggleTextLabel.Text = label

				local TogglePadding = Instance.new("UIPadding", ToggleTextLabel)
				TogglePadding.PaddingLeft = UDim.new(0, 8)

				local ToggleButton = Instance.new("TextButton", ToggleTextLabel)
				ToggleButton.BorderSizePixel = 0
				ToggleButton.TextSize = 14
				ToggleButton.AutoButtonColor = false
				ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				ToggleButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				ToggleButton.Size = UDim2.new(0, 32, 0, 16)
				ToggleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ToggleButton.Text = ""
				ToggleButton.Position = UDim2.new(1, -40, 0, 4)

				local ToggleButtonStroke = Instance.new("UIStroke", ToggleButton)
				ToggleButtonStroke.Color = Color3.fromRGB(77, 83, 87)
				ToggleButtonStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

				local ToggleButtonCorner = Instance.new("UICorner", ToggleButton)
				ToggleButtonCorner.CornerRadius = UDim.new(0, 10)

				local ToggleButtonFrame = Instance.new("Frame", ToggleButton)
				ToggleButtonFrame.BorderSizePixel = 0
				ToggleButtonFrame.Size = UDim2.new(0, 12, 0, 12)
				ToggleButtonFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)

				local ToggleButtonFrameCorner = Instance.new("UICorner", ToggleButtonFrame)
				ToggleButtonFrameCorner.CornerRadius = UDim.new(0, 10)

				local BindIndicator = Instance.new("Frame", ToggleTextLabel)
				BindIndicator.Visible = false
				BindIndicator.BorderSizePixel = 0
				BindIndicator.BackgroundColor3 = Color3.fromRGB(94, 94, 94)
				BindIndicator.Size = UDim2.new(0, 8, 0, 8)
				BindIndicator.Position = UDim2.new(1, -56, 0, 8)
				BindIndicator.BorderColor3 = Color3.fromRGB(0, 0, 0)
				BindIndicator.Name = "BindIndicator"

				local BindIndicatorCorner = Instance.new("UICorner", BindIndicator)
				BindIndicatorCorner.CornerRadius = UDim.new(0, 10)

				local state = defaultState
				local bindKeyCode = nil
				local bindMode = "always on"
				local showInKeybinds = false
				local bindConnection = nil
				local holdEndConnection = nil
				local holdState = false
				local toggleBindState = true

				local toggleTweenInfo = TweenInfo.new(
					0.15,
					Enum.EasingStyle.Quad,
					Enum.EasingDirection.Out
				)

				local function updateToggle(animate)
					if state then
						local targetBg = Color3.fromRGB(29, 34, 36)
						local targetFrameBg = Color3.fromRGB(68, 83, 87)
						local targetFramePos = UDim2.new(0, 18, 0, 2)
						local targetIndicatorBg = Color3.fromRGB(79, 94, 99)

						if animate then
							local buttonTween = TweenService:Create(ToggleButton, toggleTweenInfo, {
								BackgroundColor3 = targetBg
							})
							local frameTween = TweenService:Create(ToggleButtonFrame, toggleTweenInfo, {
								BackgroundColor3 = targetFrameBg,
								Position = targetFramePos
							})
							buttonTween:Play()
							frameTween:Play()

							if BindIndicator.Visible then
								local indicatorTween = TweenService:Create(BindIndicator, toggleTweenInfo, {
									BackgroundColor3 = targetIndicatorBg
								})
								indicatorTween:Play()
							end
						else
							ToggleButton.BackgroundColor3 = targetBg
							ToggleButtonFrame.BackgroundColor3 = targetFrameBg
							ToggleButtonFrame.Position = targetFramePos
							if BindIndicator.Visible then
								BindIndicator.BackgroundColor3 = targetIndicatorBg
							end
						end
					else
						local targetBg = Color3.fromRGB(17, 20, 21)
						local targetFrameBg = Color3.fromRGB(38, 42, 43)
						local targetFramePos = UDim2.new(0, 2, 0, 2)
						local targetIndicatorBg = Color3.fromRGB(94, 94, 94)

						if animate then
							local buttonTween = TweenService:Create(ToggleButton, toggleTweenInfo, {
								BackgroundColor3 = targetBg
							})
							local frameTween = TweenService:Create(ToggleButtonFrame, toggleTweenInfo, {
								BackgroundColor3 = targetFrameBg,
								Position = targetFramePos
							})
							buttonTween:Play()
							frameTween:Play()

							if BindIndicator.Visible then
								local indicatorTween = TweenService:Create(BindIndicator, toggleTweenInfo, {
									BackgroundColor3 = targetIndicatorBg
								})
								indicatorTween:Play()
							end
						else
							ToggleButton.BackgroundColor3 = targetBg
							ToggleButtonFrame.BackgroundColor3 = targetFrameBg
							ToggleButtonFrame.Position = targetFramePos
							if BindIndicator.Visible then
								BindIndicator.BackgroundColor3 = targetIndicatorBg
							end
						end
					end
				end

				local function updateBindIndicator()
					if not bindKeyCode then
						BindIndicator.Visible = false
						return
					end

					BindIndicator.Visible = true

					if bindMode == "always on" then
						BindIndicator.BackgroundColor3 = state and Color3.fromRGB(79, 94, 99) or Color3.fromRGB(94, 94, 94)
					elseif bindMode == "hold" then
						BindIndicator.BackgroundColor3 = holdState and Color3.fromRGB(79, 94, 99) or Color3.fromRGB(94, 94, 94)
					elseif bindMode == "toggle" then
						BindIndicator.BackgroundColor3 = toggleBindState and Color3.fromRGB(79, 94, 99) or Color3.fromRGB(94, 94, 94)
					end
				end

				local function setupBindConnection()
					if bindConnection then
						bindConnection:Disconnect()
						bindConnection = nil
					end
					if holdEndConnection then
						holdEndConnection:Disconnect()
						holdEndConnection = nil
					end

					if not bindKeyCode then
						updateBindIndicator()
						return
					end

					local keyCode = Enum.KeyCode[bindKeyCode]
					if not keyCode then
						updateBindIndicator()
						return
					end

					if bindMode == "always on" then
						bindConnection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
							if gameProcessed then return end
							if input.KeyCode == keyCode then
								if state and callback then
									callback(state)
								end
							end
						end)
					elseif bindMode == "hold" then
						bindConnection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
							if gameProcessed then return end
							if input.KeyCode == keyCode then
								holdState = true
								updateBindIndicator()
								if state and callback then
									callback(true)
								end
							end
						end)

						holdEndConnection = UserInputService.InputEnded:Connect(function(input, gameProcessed)
							if gameProcessed then return end
							if input.KeyCode == keyCode then
								holdState = false
								updateBindIndicator()
								if state and callback then
									callback(false)
								end
							end
						end)
					elseif bindMode == "toggle" then
						bindConnection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
							if gameProcessed then return end
							if input.KeyCode == keyCode then
								if state then
									toggleBindState = not toggleBindState
									updateBindIndicator()
									if callback then
										callback(toggleBindState)
									end
								end
							end
						end)
					end

					updateBindIndicator()
				end

				updateToggle(false)
				setupBindConnection()

				ToggleButton.MouseButton1Click:Connect(function()
					state = not state
					updateToggle(true)
					updateBindIndicator()
					if callback then
						callback(state)
					end
				end)

				local function openDialog()
					Window.DialogFrame["1"].Visible = true
					Window.DialogFrame["Label"].Text = label

					local elementContainer = Window.DialogFrame["ElementContainer"]
					elementContainer:ClearAllChildren()

					Window.DialogFrame["7"] = Instance.new("UIListLayout", Window.DialogFrame["ElementContainer"])
					Window.DialogFrame["7"]["SortOrder"] = Enum.SortOrder.LayoutOrder

					local visibilityLabel = Instance.new("TextLabel", elementContainer)
					visibilityLabel.BorderSizePixel = 0
					visibilityLabel.TextSize = 14
					visibilityLabel.TextXAlignment = Enum.TextXAlignment.Left
					visibilityLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					visibilityLabel.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
					visibilityLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
					visibilityLabel.BackgroundTransparency = 1
					visibilityLabel.Size = UDim2.new(1, 0, 0, 24)
					visibilityLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
					visibilityLabel.Text = "show in keybinds"
					visibilityLabel.Name = "Visibility"

					local visibilityPadding = Instance.new("UIPadding", visibilityLabel)
					visibilityPadding.PaddingLeft = UDim.new(0, 8)

					local visibilityToggle = Instance.new("TextButton", visibilityLabel)
					visibilityToggle.BorderSizePixel = 0
					visibilityToggle.TextSize = 14
					visibilityToggle.AutoButtonColor = false
					visibilityToggle.TextColor3 = Color3.fromRGB(0, 0, 0)
					visibilityToggle.BackgroundColor3 = showInKeybinds and Color3.fromRGB(29, 34, 36) or Color3.fromRGB(17, 20, 21)
					visibilityToggle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
					visibilityToggle.Size = UDim2.new(0, 32, 0, 16)
					visibilityToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
					visibilityToggle.Text = ""
					visibilityToggle.Position = UDim2.new(1, -40, 0, 4)

					local visibilityToggleStroke = Instance.new("UIStroke", visibilityToggle)
					visibilityToggleStroke.Color = Color3.fromRGB(77, 83, 87)
					visibilityToggleStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

					local visibilityToggleCorner = Instance.new("UICorner", visibilityToggle)
					visibilityToggleCorner.CornerRadius = UDim.new(0, 10)

					local visibilityToggleFrame = Instance.new("Frame", visibilityToggle)
					visibilityToggleFrame.BorderSizePixel = 0
					visibilityToggleFrame.Size = UDim2.new(0, 12, 0, 12)
					visibilityToggleFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
					visibilityToggleFrame.Position = showInKeybinds and UDim2.new(0, 18, 0, 2) or UDim2.new(0, 2, 0, 2)
					visibilityToggleFrame.BackgroundColor3 = showInKeybinds and Color3.fromRGB(68, 83, 87) or Color3.fromRGB(38, 42, 43)

					local visibilityToggleFrameCorner = Instance.new("UICorner", visibilityToggleFrame)
					visibilityToggleFrameCorner.CornerRadius = UDim.new(0, 10)

					visibilityToggle.MouseButton1Click:Connect(function()
						showInKeybinds = not showInKeybinds
						visibilityToggle.BackgroundColor3 = showInKeybinds and Color3.fromRGB(29, 34, 36) or Color3.fromRGB(17, 20, 21)
						visibilityToggleFrame.BackgroundColor3 = showInKeybinds and Color3.fromRGB(68, 83, 87) or Color3.fromRGB(38, 42, 43)
						visibilityToggleFrame.Position = showInKeybinds and UDim2.new(0, 18, 0, 2) or UDim2.new(0, 2, 0, 2)
					end)

					local bindLabel = Instance.new("TextLabel", elementContainer)
					bindLabel.BorderSizePixel = 0
					bindLabel.TextSize = 14
					bindLabel.TextXAlignment = Enum.TextXAlignment.Left
					bindLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					bindLabel.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
					bindLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
					bindLabel.BackgroundTransparency = 1
					bindLabel.Size = UDim2.new(1, 0, 0, 24)
					bindLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
					bindLabel.Text = "bind"
					bindLabel.Name = "Bind"

					local bindPadding = Instance.new("UIPadding", bindLabel)
					bindPadding.PaddingLeft = UDim.new(0, 8)

					local bindButton = Instance.new("TextButton", bindLabel)
					bindButton.BorderSizePixel = 0
					bindButton.TextSize = 12
					bindButton.AutoButtonColor = false
					bindButton.TextColor3 = Color3.fromRGB(255, 255, 255)
					bindButton.BackgroundColor3 = Color3.fromRGB(43, 52, 55)
					bindButton.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
					bindButton.AnchorPoint = Vector2.new(1, 0)
					bindButton.AutomaticSize = Enum.AutomaticSize.X
					bindButton.Size = UDim2.new(0, 40, 0, 16)
					bindButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
					bindButton.Text = bindKeyCode and ("[" .. bindKeyCode .. "]") or "[None]"
					bindButton.Position = UDim2.new(1, -8, 0.167, 0)

					local bindButtonStroke = Instance.new("UIStroke", bindButton)
					bindButtonStroke.Color = Color3.fromRGB(77, 83, 87)
					bindButtonStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

					local bindButtonCorner = Instance.new("UICorner", bindButton)
					bindButtonCorner.CornerRadius = UDim.new(0, 4)

					local bindButtonGradient = Instance.new("UIGradient", bindButton)
					bindButtonGradient.Rotation = 90
					bindButtonGradient.Color = ColorSequence.new{
						ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),
						ColorSequenceKeypoint.new(1.000, Color3.fromRGB(174, 174, 174))
					}

					local bindButtonPadding = Instance.new("UIPadding", bindButton)
					bindButtonPadding.PaddingRight = UDim.new(0, 4)
					bindButtonPadding.PaddingLeft = UDim.new(0, 4)

					local listening = false
					local listeningConnection = nil

					bindButton.MouseButton1Click:Connect(function()
						if listening then return end

						if bindKeyCode then
							bindKeyCode = nil
							bindButton.Text = "[None]"
							setupBindConnection()
						else
							listening = true
							bindButton.Text = "[...]"

							if listeningConnection then
								listeningConnection:Disconnect()
							end

							listeningConnection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
								if gameProcessed then return end

								if input.KeyCode == Enum.KeyCode.Escape then
									bindButton.Text = bindKeyCode and ("[" .. bindKeyCode .. "]") or "[None]"
									listening = false
									if listeningConnection then
										listeningConnection:Disconnect()
										listeningConnection = nil
									end
								elseif input.KeyCode ~= Enum.KeyCode.Unknown then
									bindKeyCode = input.KeyCode.Name
									bindButton.Text = "[" .. bindKeyCode .. "]"
									listening = false
									if listeningConnection then
										listeningConnection:Disconnect()
										listeningConnection = nil
									end
									setupBindConnection()
								end
							end)
						end
					end)


					local modeLabel = Instance.new("TextLabel", elementContainer)
					modeLabel.BorderSizePixel = 0
					modeLabel.TextSize = 14
					modeLabel.TextXAlignment = Enum.TextXAlignment.Left
					modeLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					modeLabel.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
					modeLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
					modeLabel.BackgroundTransparency = 1
					modeLabel.Size = UDim2.new(1, 0, 0, 24)
					modeLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
					modeLabel.Text = "mode"
					modeLabel.Name = "Mode"

					local modePadding = Instance.new("UIPadding", modeLabel)
					modePadding.PaddingLeft = UDim.new(0, 8)

					local modeButton = Instance.new("TextButton", modeLabel)
					modeButton.TextTruncate = Enum.TextTruncate.SplitWord
					modeButton.BorderSizePixel = 0
					modeButton.TextSize = 12
					modeButton.AutoButtonColor = false
					modeButton.TextColor3 = Color3.fromRGB(120, 142, 150)
					modeButton.BackgroundColor3 = Color3.fromRGB(18, 21, 22)
					modeButton.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
					modeButton.AnchorPoint = Vector2.new(1, 0)
					modeButton.AutomaticSize = Enum.AutomaticSize.X
					modeButton.Size = UDim2.new(0, 80, 0, 16)
					modeButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
					modeButton.Text = bindMode
					modeButton.Position = UDim2.new(1, -8, 0, 4)

					local modeButtonStroke = Instance.new("UIStroke", modeButton)
					modeButtonStroke.Color = Color3.fromRGB(77, 83, 87)
					modeButtonStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

					local modeButtonCorner = Instance.new("UICorner", modeButton)
					modeButtonCorner.CornerRadius = UDim.new(0, 4)

					local modeButtonPadding = Instance.new("UIPadding", modeButton)
					modeButtonPadding.PaddingRight = UDim.new(0, 4)
					modeButtonPadding.PaddingLeft = UDim.new(0, 4)

					local modeButtonGradient = Instance.new("UIGradient", modeButton)
					modeButtonGradient.Rotation = 90
					modeButtonGradient.Color = ColorSequence.new{
						ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),
						ColorSequenceKeypoint.new(1.000, Color3.fromRGB(174, 174, 174))
					}

					local variantsFrame = Instance.new("Frame", modeLabel)
					variantsFrame.Visible = false
					variantsFrame.BorderSizePixel = 0
					variantsFrame.BackgroundColor3 = Color3.fromRGB(22, 26, 27)
					variantsFrame.AnchorPoint = Vector2.new(1, 0)
					variantsFrame.AutomaticSize = Enum.AutomaticSize.Y
					variantsFrame.Size = UDim2.new(0, 80, 0, 0)
					variantsFrame.Position = UDim2.new(1, -8, 0.167, 20)
					variantsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
					variantsFrame.Name = "VariantsFrame"

					local variantsFrameCorner = Instance.new("UICorner", variantsFrame)
					variantsFrameCorner.CornerRadius = UDim.new(0, 4)

					local variantsFrameStroke = Instance.new("UIStroke", variantsFrame)
					variantsFrameStroke.Color = Color3.fromRGB(77, 83, 87)
					variantsFrameStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

					local variantsFrameLayout = Instance.new("UIListLayout", variantsFrame)
					variantsFrameLayout.SortOrder = Enum.SortOrder.LayoutOrder

					local modes = {"always on", "hold", "toggle"}
					for _, mode in ipairs(modes) do
						local variant = Instance.new("TextButton", variantsFrame)
						variant.BorderSizePixel = 0
						variant.TextXAlignment = Enum.TextXAlignment.Left
						variant.TextSize = 12
						variant.TextColor3 = (mode == bindMode) and Color3.fromRGB(120, 142, 150) or Color3.fromRGB(155, 155, 155)
						variant.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						variant.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
						variant.BackgroundTransparency = 1
						variant.AutomaticSize = Enum.AutomaticSize.X
						variant.Size = UDim2.new(1, 0, 0, 16)
						variant.BorderColor3 = Color3.fromRGB(0, 0, 0)
						variant.Text = mode
						variant.Name = "Variant"

						local variantPadding = Instance.new("UIPadding", variant)
						variantPadding.PaddingLeft = UDim.new(0, 4)

						variant.MouseButton1Click:Connect(function()
							bindMode = mode
							modeButton.Text = bindMode
							variantsFrame.Visible = false
							for _, v in ipairs(variantsFrame:GetChildren()) do
								if v:IsA("TextButton") then
									v.TextColor3 = (v.Text == bindMode) and Color3.fromRGB(120, 142, 150) or Color3.fromRGB(155, 155, 155)
								end
							end

							if bindMode == "hold" then
								holdState = false
								if state and callback then
									callback(false)
								end
							elseif bindMode == "toggle" then
								toggleBindState = true
								if state and callback then
									callback(true)
								end
							elseif bindMode == "always on" then
								if state and callback then
									callback(state)
								end
							end

							setupBindConnection()

							if bindKeyCode then
								BindIndicator.Visible = true
								updateBindIndicator()
							end
						end)
					end

					local variantsFrameGradient = Instance.new("UIGradient", variantsFrame)
					variantsFrameGradient.Rotation = 90
					variantsFrameGradient.Color = ColorSequence.new{
						ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),
						ColorSequenceKeypoint.new(1.000, Color3.fromRGB(174, 174, 174))
					}

					local variantsFramePadding = Instance.new("UIPadding", variantsFrame)
					variantsFramePadding.PaddingBottom = UDim.new(0, 4)

					modeButton.MouseButton1Click:Connect(function()
						variantsFrame.Visible = not variantsFrame.Visible
					end)
				end

				Window.DialogFrame["CloseButton"].MouseButton1Click:Connect(function()
					Window.DialogFrame["1"].Visible = false
				end)

				Window.DialogFrame["1"].MouseButton1Click:Connect(function()
					if Window.DialogFrame["1"].Visible then
						Window.DialogFrame["1"].Visible = false
					end
				end)

				ToggleButton.MouseButton2Click:Connect(function()
					openDialog()
				end)

				local ToggleObject = {
					SetState = function(newState)
						state = newState
						updateToggle(true)
						if callback then
							callback(state)
						end
					end,
					GetState = function()
						return state
					end
				}

				return ToggleObject
			end

			function SectionObject:newSlider(label, min, max, default, callback)
				if type(label) ~= "string" then
					print("invalid value of slider label, need string")
					return
				end

				min = min or 0
				max = max or 100
				default = default or min
				local value = math.clamp(default, min, max)

				local SliderLabel = Instance.new("TextLabel", self.Container)
				SliderLabel.BorderSizePixel = 0
				SliderLabel.TextSize = 14
				SliderLabel.TextXAlignment = Enum.TextXAlignment.Left
				SliderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderLabel.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
				SliderLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
				SliderLabel.BackgroundTransparency = 1
				SliderLabel.Size = UDim2.new(1, 0, 0, 24)
				SliderLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SliderLabel.Text = label
				SliderLabel.Name = "Slider"

				local SliderPadding = Instance.new("UIPadding", SliderLabel)
				SliderPadding.PaddingLeft = UDim.new(0, 8)

				local SliderButton = Instance.new("TextButton", SliderLabel)
				SliderButton.BorderSizePixel = 0
				SliderButton.TextXAlignment = Enum.TextXAlignment.Right
				SliderButton.TextSize = 14
				SliderButton.AutoButtonColor = false
				SliderButton.TextColor3 = Color3.fromRGB(168, 168, 168)
				SliderButton.BackgroundColor3 = Color3.fromRGB(18, 21, 22)
				SliderButton.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
				SliderButton.Size = UDim2.new(0, 160, 0, 16)
				SliderButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SliderButton.Text = ""
				SliderButton.Name = "SliderButton"
				SliderButton.Position = UDim2.new(1, -168, 0, 4)

				local SliderButtonStroke = Instance.new("UIStroke", SliderButton)
				SliderButtonStroke.Color = Color3.fromRGB(77, 83, 87)
				SliderButtonStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

				local SliderButtonCorner = Instance.new("UICorner", SliderButton)
				SliderButtonCorner.CornerRadius = UDim.new(0, 4)

				local FillFrame = Instance.new("Frame", SliderButton)
				FillFrame.BorderSizePixel = 0
				FillFrame.BackgroundColor3 = Color3.fromRGB(43, 52, 55)
				FillFrame.Size = UDim2.new(0, 0, 0, 16)
				FillFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
				FillFrame.Name = "FillFrame"

				local FillFrameCorner = Instance.new("UICorner", FillFrame)
				FillFrameCorner.CornerRadius = UDim.new(0, 4)

				local FillFrameGradient = Instance.new("UIGradient", FillFrame)
				FillFrameGradient.Rotation = 90
				FillFrameGradient.Color = ColorSequence.new{
					ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),
					ColorSequenceKeypoint.new(1.000, Color3.fromRGB(174, 174, 174))
				}

				local ValueLabel = Instance.new("TextLabel", SliderButton)
				ValueLabel.BorderSizePixel = 0
				ValueLabel.TextSize = 14
				ValueLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ValueLabel.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
				ValueLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
				ValueLabel.BackgroundTransparency = 1
				ValueLabel.Size = UDim2.new(0, 160, 0, 16)
				ValueLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ValueLabel.Text = tostring(value) .. "°"
				ValueLabel.Name = "Value"

				local SliderButtonGradient = Instance.new("UIGradient", SliderButton)
				SliderButtonGradient.Rotation = 90
				SliderButtonGradient.Color = ColorSequence.new{
					ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),
					ColorSequenceKeypoint.new(1.000, Color3.fromRGB(174, 174, 174))
				}

				local function updateSlider(animate)
					local percentage = (value - min) / (max - min)
					local fillWidth = math.floor(160 * percentage)
					FillFrame.Size = UDim2.new(0, fillWidth, 0, 16)
					ValueLabel.Text = tostring(value) .. "°"
				end

				updateSlider(false)

				local dragging = false
				SliderButton.MouseButton1Down:Connect(function()
					dragging = true
					local connection
					connection = game:GetService("UserInputService").InputChanged:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseMovement and dragging then
							local mousePos = game:GetService("UserInputService"):GetMouseLocation()
							local sliderPos = SliderButton.AbsolutePosition
							local sliderSize = SliderButton.AbsoluteSize
							local relativeX = mousePos.X - sliderPos.X
							local percentage = math.clamp(relativeX / sliderSize.X, 0, 1)
							value = math.floor(min + (max - min) * percentage)
							updateSlider(false)
							if callback then
								callback(value)
							end
						end
					end)
					game:GetService("UserInputService").InputEnded:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							dragging = false
							if connection then
								connection:Disconnect()
							end
						end
					end)
				end)

				local SliderObject = {
					SetValue = function(newValue)
						value = math.clamp(newValue, min, max)
						updateSlider(false)
						if callback then
							callback(value)
						end
					end,
					GetValue = function()
						return value
					end
				}

				return SliderObject
			end

			function SectionObject:newBind(label, defaultKey, callback)
				if type(label) ~= "string" then
					print("invalid value of bind label, need string")
					return
				end

				local BindLabel = Instance.new("TextButton", self.Container)
				BindLabel.BorderSizePixel = 0
				BindLabel.TextSize = 14
				BindLabel.TextXAlignment = Enum.TextXAlignment.Left
				BindLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				BindLabel.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
				BindLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
				BindLabel.BackgroundTransparency = 1
				BindLabel.Size = UDim2.new(1, 0, 0, 24)
				BindLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
				BindLabel.Text = label
				BindLabel.Name = "Bind"
				BindLabel.ZIndex = 1
				BindLabel.AutoButtonColor = false
				BindLabel.Text = ""

				local BindPadding = Instance.new("UIPadding", BindLabel)
				BindPadding.PaddingLeft = UDim.new(0, 8)

				local BindTextLabel = Instance.new("TextLabel", BindLabel)
				BindTextLabel.BorderSizePixel = 0
				BindTextLabel.TextSize = 14
				BindTextLabel.TextXAlignment = Enum.TextXAlignment.Left
				BindTextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				BindTextLabel.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
				BindTextLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
				BindTextLabel.BackgroundTransparency = 1
				BindTextLabel.Size = UDim2.new(1, 0, 1, 0)
				BindTextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
				BindTextLabel.Text = label
				BindTextLabel.Name = "TextLabel"

				local BindButton = Instance.new("TextButton", BindLabel)
				BindButton.BorderSizePixel = 0
				BindButton.TextSize = 12
				BindButton.AutoButtonColor = false
				BindButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				BindButton.BackgroundColor3 = Color3.fromRGB(43, 52, 55)
				BindButton.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
				BindButton.AnchorPoint = Vector2.new(1, 0)
				BindButton.AutomaticSize = Enum.AutomaticSize.X
				BindButton.Size = UDim2.new(0, 40, 0, 16)
				BindButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
				BindButton.Position = UDim2.new(1, -8, 0.167, 0)
				BindButton.Name = "BindButton"
				BindButton.Active = true
				BindButton.ZIndex = 10

				local BindButtonStroke = Instance.new("UIStroke", BindButton)
				BindButtonStroke.Color = Color3.fromRGB(77, 83, 87)
				BindButtonStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

				local BindButtonCorner = Instance.new("UICorner", BindButton)
				BindButtonCorner.CornerRadius = UDim.new(0, 4)

				local BindButtonGradient = Instance.new("UIGradient", BindButton)
				BindButtonGradient.Rotation = 90
				BindButtonGradient.Color = ColorSequence.new{
					ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),
					ColorSequenceKeypoint.new(1.000, Color3.fromRGB(174, 174, 174))
				}

				local BindButtonPadding = Instance.new("UIPadding", BindButton)
				BindButtonPadding.PaddingRight = UDim.new(0, 4)
				BindButtonPadding.PaddingLeft = UDim.new(0, 4)

				local listening = false
				local listeningConnection = nil
				local keyPressConnection = nil
				local currentKey = defaultKey

				local function updateText()
					if currentKey then
						BindButton.Text = "[" .. currentKey .. "]"
					else
						BindButton.Text = "[None]"
					end
				end

				updateText()

				local function disconnectKeyPress()
					if keyPressConnection then
						keyPressConnection:Disconnect()
						keyPressConnection = nil
					end
				end

				local function setupKeyPress()
					disconnectKeyPress()

					if not currentKey or not callback then
						return
					end

					local keyCode = Enum.KeyCode[currentKey]
					if not keyCode then
						return
					end

					keyPressConnection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
						if gameProcessed then return end
						if input.KeyCode == keyCode then
							callback(currentKey, true)
						end
					end)
				end

				local function stopListening()
					listening = false
					if listeningConnection then
						listeningConnection:Disconnect()
						listeningConnection = nil
					end
					updateText()
				end

				local function startListening()
					if listening then
						stopListening()
						return
					end

					listening = true
					BindButton.Text = "[...]"

					if listeningConnection then
						listeningConnection:Disconnect()
						listeningConnection = nil
					end

					listeningConnection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
						if gameProcessed then return end
						if not listening then return end

						if input.KeyCode == Enum.KeyCode.Escape then
							currentKey = nil
							disconnectKeyPress()
							stopListening()
							if callback then
								callback(nil)
							end
							return
						end

						if input.KeyCode ~= Enum.KeyCode.Unknown then
							currentKey = input.KeyCode.Name
							stopListening()
							if callback then
								callback(currentKey)
							end
							setupKeyPress()
						end
					end)
				end

				BindButton.MouseButton1Click:Connect(function()
					startListening()
				end)

				local BindObject = {
					SetKey = function(newKey)
						if newKey == nil then
							currentKey = nil
							disconnectKeyPress()
						else
							if typeof(newKey) == "EnumItem" and newKey.EnumType == Enum.KeyCode then
								currentKey = newKey.Name
							elseif type(newKey) == "string" and Enum.KeyCode[newKey] then
								currentKey = newKey
							else
								warn("Invalid key for bind: " .. tostring(newKey))
								return
							end
						end
						updateText()
						if callback then
							callback(currentKey)
						end
						setupKeyPress()
					end,
					GetKey = function()
						return currentKey
					end
				}

				if currentKey then
					setupKeyPress()
				end

				return BindObject
			end

			function SectionObject:newSelectbox(label, options, multi, default, callback)
				if type(label) ~= "string" then
					print("invalid value of selectbox label, need string")
					return
				end

				options = options or {}

				local isMulti = false
				if multi == nil then
					isMulti = type(default) == "table"
				elseif type(multi) == "boolean" then
					isMulti = multi
				else
					error("multi parameter must be boolean or nil")
				end

				local selectedOptions = {}

				if isMulti then
					if type(default) == "table" then
						for _, v in ipairs(default) do
							if table.find(options, v) then
								table.insert(selectedOptions, v)
							end
						end
					elseif default ~= nil then
						if table.find(options, default) then
							table.insert(selectedOptions, default)
						end
					end
				else
					if type(default) == "table" then
						for _, v in ipairs(default) do
							if table.find(options, v) then
								selectedOptions = {v}
								break
							end
						end
					elseif default and table.find(options, default) then
						selectedOptions = {default}
					end
				end

				local SelectboxLabel = Instance.new("TextLabel", self.Container)
				SelectboxLabel.BorderSizePixel = 0
				SelectboxLabel.TextSize = 14
				SelectboxLabel.TextXAlignment = Enum.TextXAlignment.Left
				SelectboxLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SelectboxLabel.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
				SelectboxLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
				SelectboxLabel.BackgroundTransparency = 1
				SelectboxLabel.Size = UDim2.new(1, 0, 0, 24)
				SelectboxLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SelectboxLabel.Text = label
				SelectboxLabel.Name = "Selectbox"

				local SelectboxPadding = Instance.new("UIPadding", SelectboxLabel)
				SelectboxPadding.PaddingLeft = UDim.new(0, 8)

				local SelectboxButton = Instance.new("TextButton", SelectboxLabel)
				SelectboxButton.TextTruncate = Enum.TextTruncate.SplitWord
				SelectboxButton.BorderSizePixel = 0
				SelectboxButton.TextXAlignment = Enum.TextXAlignment.Left
				SelectboxButton.TextSize = 12
				SelectboxButton.AutoButtonColor = false
				SelectboxButton.TextColor3 = Color3.fromRGB(120, 142, 150)
				SelectboxButton.BackgroundColor3 = Color3.fromRGB(18, 21, 22)
				SelectboxButton.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
				SelectboxButton.Size = UDim2.new(0, 160, 0, 16)
				SelectboxButton.BorderColor3 = Color3.fromRGB(0, 0, 0)

				local function updateDisplay()
					if not isMulti then
						local val = selectedOptions[1]
						SelectboxButton.Text = val or "None"
					else
						if #selectedOptions == 0 then
							SelectboxButton.Text = "None"
						elseif #selectedOptions == #options then
							SelectboxButton.Text = "All"
						else
							SelectboxButton.Text = table.concat(selectedOptions, ", ")
						end
					end
				end

				updateDisplay()
				SelectboxButton.Name = "Button"
				SelectboxButton.Position = UDim2.new(1, -168, 0, 4)

				local SelectboxButtonStroke = Instance.new("UIStroke", SelectboxButton)
				SelectboxButtonStroke.Color = Color3.fromRGB(77, 83, 87)
				SelectboxButtonStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

				local SelectboxButtonCorner = Instance.new("UICorner", SelectboxButton)
				SelectboxButtonCorner.CornerRadius = UDim.new(0, 4)

				local SelectboxButtonPadding = Instance.new("UIPadding", SelectboxButton)
				SelectboxButtonPadding.PaddingRight = UDim.new(0, 8)
				SelectboxButtonPadding.PaddingLeft = UDim.new(0, 4)

				local SelectboxButtonGradient = Instance.new("UIGradient", SelectboxButton)
				SelectboxButtonGradient.Rotation = 90
				SelectboxButtonGradient.Color = ColorSequence.new{
					ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),
					ColorSequenceKeypoint.new(1.000, Color3.fromRGB(174, 174, 174))
				}

				local VariantsFrame = Instance.new("Frame", SelectboxLabel)
				VariantsFrame.Visible = false
				VariantsFrame.BorderSizePixel = 0
				VariantsFrame.BackgroundColor3 = Color3.fromRGB(22, 26, 27)
				VariantsFrame.AutomaticSize = Enum.AutomaticSize.Y
				VariantsFrame.Size = UDim2.new(0, 160, 0, 0)
				VariantsFrame.Position = UDim2.new(1, -168, 0, 24)
				VariantsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
				VariantsFrame.Name = "VariantsFrame"

				local VariantsFrameCorner = Instance.new("UICorner", VariantsFrame)
				VariantsFrameCorner.CornerRadius = UDim.new(0, 4)

				local VariantsFrameStroke = Instance.new("UIStroke", VariantsFrame)
				VariantsFrameStroke.Color = Color3.fromRGB(77, 83, 87)
				VariantsFrameStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

				local VariantsFrameLayout = Instance.new("UIListLayout", VariantsFrame)
				VariantsFrameLayout.SortOrder = Enum.SortOrder.LayoutOrder
				VariantsFrameLayout.Padding = UDim.new(0, 2)

				local VariantsFramePadding = Instance.new("UIPadding", VariantsFrame)
				VariantsFramePadding.PaddingTop = UDim.new(0, 4)
				VariantsFramePadding.PaddingBottom = UDim.new(0, 4)
				VariantsFramePadding.PaddingLeft = UDim.new(0, 4)
				VariantsFramePadding.PaddingRight = UDim.new(0, 4)

				local VariantsFrameGradient = Instance.new("UIGradient", VariantsFrame)
				VariantsFrameGradient.Rotation = 90
				VariantsFrameGradient.Color = ColorSequence.new{
					ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),
					ColorSequenceKeypoint.new(1.000, Color3.fromRGB(174, 174, 174))
				}

				local function updateVariantColors()
					for _, v in ipairs(VariantsFrame:GetChildren()) do
						if v:IsA("TextButton") and v.Name == "Variant" then
							local isSelected = table.find(selectedOptions, v.Text) ~= nil
							v.TextColor3 = (not isMulti and v.Text == selectedOptions[1] or isMulti and isSelected)
								and Color3.fromRGB(120, 142, 150) or Color3.fromRGB(155, 155, 155)
						end
					end
				end

				for _, option in ipairs(options) do
					local variant = Instance.new("TextButton", VariantsFrame)
					variant.BorderSizePixel = 0
					variant.TextXAlignment = Enum.TextXAlignment.Left
					variant.TextSize = 12
					variant.BackgroundTransparency = 1
					variant.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
					variant.Size = UDim2.new(1, 0, 0, 16)
					variant.Text = option
					variant.Name = "Variant"
					variant.AutoButtonColor = false

					variant.MouseButton1Click:Connect(function()
						if not isMulti then
							selectedOptions = {option}
						else
							local idx = table.find(selectedOptions, option)
							if idx then
								table.remove(selectedOptions, idx)
							else
								table.insert(selectedOptions, option)
							end
						end

						updateVariantColors()
						updateDisplay()

						if callback then
							callback(isMulti and selectedOptions or selectedOptions[1])
						end
					end)
				end

				updateVariantColors()

				local originalLabelZIndex = SelectboxLabel.ZIndex or 1
				local originalContainerZIndex = self.Container.ZIndex or 1
				local clickConnection = nil

				local function closeVariants()
					if not VariantsFrame.Visible then return end
					VariantsFrame.Visible = false

					SelectboxLabel.ZIndex = originalLabelZIndex
					self.Container.ZIndex = originalContainerZIndex

					if clickConnection then
						clickConnection:Disconnect()
						clickConnection = nil
					end
				end

				local function openVariants()
					if VariantsFrame.Visible then
						closeVariants()
						return
					end

					VariantsFrame.Visible = true

					SelectboxLabel.ZIndex = originalLabelZIndex + 10
					self.Container.ZIndex = originalContainerZIndex + 10
					VariantsFrame.ZIndex = 100
					for _, child in ipairs(VariantsFrame:GetDescendants()) do
						if child:IsA("GuiObject") then
							child.ZIndex = 100
						end
					end

					local UIS = game:GetService("UserInputService")
					if clickConnection then clickConnection:Disconnect() end

					clickConnection = UIS.InputBegan:Connect(function(input, gameProcessed)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							if gameProcessed then
								return
							end

							closeVariants()
						end
					end)
				end

				SelectboxButton.MouseButton1Click:Connect(openVariants)

				SelectboxLabel.AncestryChanged:Connect(function(_, parent)
					if not parent then
						closeVariants()
					end
				end)

				local SelectboxObject = {
					SetValue = function(newValue)
						if type(newValue) == "table" then
							selectedOptions = {}
							for _, v in ipairs(newValue) do
								if table.find(options, v) then
									table.insert(selectedOptions, v)
								end
							end
						elseif newValue == nil then
							selectedOptions = {}
						else
							if table.find(options, newValue) then
								selectedOptions = {newValue}
							end
						end

						updateVariantColors()
						updateDisplay()

						if callback then
							callback(isMulti and selectedOptions or selectedOptions[1])
						end
					end,
					GetValue = function()
						return isMulti and selectedOptions or selectedOptions[1]
					end,
					GetOptions = function()
						return options
					end
				}

				return SelectboxObject
			end

			return SectionObject
		end

		return TabObject
	end

	local tabButtonsFinalPosition = Window.TabButtons["1"].Position
	local tabButtonsFinalSize = Window.TabButtons["1"].Size

	Window["2"].BackgroundTransparency = 1
	Window["4"].Transparency = 1
	Window.TabButtons["1"].Position = UDim2.new(0, 0, 0.994, -16)
	Window.TabButtons["1"].Size = UDim2.new(1, 0, -0.045, 32)

	local windowTweenInfo = TweenInfo.new(
		0.1,
		Enum.EasingStyle.Quad,
		Enum.EasingDirection.Out
	)

	local windowTween = TweenService:Create(Window["2"], windowTweenInfo, {
		BackgroundTransparency = 0
	})

	local centerTween = TweenService:Create(Window.Center["1"], windowTweenInfo, {
		BackgroundTransparency = 0
	})

	local strokeTween = TweenService:Create(Window["4"], windowTweenInfo, {
		Transparency = 0
	})

	local tabButtonsTweenInfo = TweenInfo.new(
		0.1,
		Enum.EasingStyle.Quad,
		Enum.EasingDirection.Out
	)

	local tabButtonsTween = TweenService:Create(Window.TabButtons["1"], tabButtonsTweenInfo, {
		Position = tabButtonsFinalPosition,
		Size = tabButtonsFinalSize
	})

	Window["2"]["Visible"] = true
	windowTween:Play()
	strokeTween:Play()

	local function animateSections(tabData)
		local sections = {}
		for _, child in ipairs(tabData.Left:GetChildren()) do
			if child:IsA("TextLabel") and child.Name == "Section" then
				table.insert(sections, child)
			end
		end
		for _, child in ipairs(tabData.Right:GetChildren()) do
			if child:IsA("TextLabel") and child.Name == "Section" then
				table.insert(sections, child)
			end
		end

		local sectionTweenInfo = TweenInfo.new(
			0.15,
			Enum.EasingStyle.Quad,
			Enum.EasingDirection.Out
		)

		local tweens = {}
		for _, sectionLabel in ipairs(sections) do
			local sectionContainer = sectionLabel:FindFirstChild("Section")
			if sectionContainer then
				local sectionStroke = sectionContainer:FindFirstChild("UIStroke")

				local containerTween = TweenService:Create(sectionContainer, sectionTweenInfo, {
					Position = UDim2.new(0, 4, 0, 24),
					BackgroundTransparency = 0
				})

				local labelTween = TweenService:Create(sectionLabel, sectionTweenInfo, {
					TextTransparency = 0
				})

				local strokeTween
				if sectionStroke then
					strokeTween = TweenService:Create(sectionStroke, sectionTweenInfo, {
						Transparency = 0
					})
				end

				table.insert(tweens, containerTween)
				table.insert(tweens, labelTween)
				if strokeTween then
					table.insert(tweens, strokeTween)
				end
			end
		end

		for _, tween in ipairs(tweens) do
			tween:Play()
		end
	end	

	Window.AnimateSections = animateSections

	task.spawn(function()
		task.wait(0.025)
		tabButtonsTween:Play()
		task.wait(0.025)
		centerTween:Play()

		if Window.ActiveTab and Window.Tabs[Window.ActiveTab] then
			animateSections(Window.Tabs[Window.ActiveTab])
		end
	end)


	local isOpen = true

	local originalTransparencies = {} 

	local function restoreTabButtonsProperly()
		local tabContainer = Window.TabButtons["1"]:FindFirstChild("Tab")
		if tabContainer then
			TweenService:Create(tabContainer, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
				BackgroundTransparency = 0
			}):Play()

			local stroke = tabContainer:FindFirstChildWhichIsA("UIStroke")
			if stroke then
				TweenService:Create(stroke, TweenInfo.new(0.2), { Transparency = 0 }):Play()
			end

			local gradient = tabContainer:FindFirstChildWhichIsA("UIGradient")
			if gradient then
				TweenService:Create(gradient, TweenInfo.new(0.2), { Rotation = gradient.Rotation }):Play()
			end
		end

		for _, child in ipairs(Window.TabButtons["1"]:GetDescendants()) do
			if child:IsA("TextButton") then
				TweenService:Create(child, TweenInfo.new(0.2), {
					TextTransparency = 0
				}):Play()
			elseif child:IsA("GuiObject") and child.BackgroundTransparency < 0.9 then
				TweenService:Create(child, TweenInfo.new(0.2), {
					BackgroundTransparency = child.BackgroundTransparency
				}):Play()
			end
		end
	end

	local function highlightActiveTabButton()
		if not Window.ActiveTab then return end

		for label, tabData in pairs(Window.Tabs) do
			local button = tabData.Button
			if button then
				local isActive = (label == Window.ActiveTab)

				TweenService:Create(button, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundTransparency = isActive and 0 or 1,
					TextColor3 = isActive and Color3.fromRGB(230, 230, 230) or Color3.fromRGB(155, 155, 155),
					BackgroundColor3 = isActive and Color3.fromRGB(37, 43, 46) or button.BackgroundColor3
				}):Play()
			end
		end
	end

	local function hideAllSections(tabData)
		if not tabData then return end
		local tweenInfo = TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

		originalTransparencies = {}

		for _, side in ipairs({tabData.Left, tabData.Right}) do
			for _, sectionLabel in ipairs(side:GetChildren()) do
				if sectionLabel:IsA("TextLabel") and sectionLabel.Name == "Section" then
					local sectionContainer = sectionLabel:FindFirstChild("Section")
					if sectionContainer then
						local stroke = sectionContainer:FindFirstChild("UIStroke")

						TweenService:Create(sectionContainer, tweenInfo, {
							Position = UDim2.new(0, 4, 1, 0),
							BackgroundTransparency = 1
						}):Play()
						TweenService:Create(sectionLabel, tweenInfo, { TextTransparency = 1 }):Play()
						if stroke then
							TweenService:Create(stroke, tweenInfo, { Transparency = 1 }):Play()
						end

						for _, obj in ipairs(sectionContainer:GetDescendants()) do
							local saved = {}

							if obj:IsA("GuiObject") then
								if obj.BackgroundTransparency < 0.9 then
									saved.BackgroundTransparency = obj.BackgroundTransparency
									TweenService:Create(obj, tweenInfo, { BackgroundTransparency = 1 }):Play()
								end
								if (obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox")) and obj.TextTransparency < 0.9 then
									saved.TextTransparency = obj.TextTransparency
									TweenService:Create(obj, tweenInfo, { TextTransparency = 1 }):Play()
								end
								if (obj:IsA("ImageLabel") or obj:IsA("ImageButton")) and obj.ImageTransparency < 0.9 then
									saved.ImageTransparency = obj.ImageTransparency
									TweenService:Create(obj, tweenInfo, { ImageTransparency = 1 }):Play()
								end

							elseif obj:IsA("UIStroke") and obj.Transparency < 0.9 then
								saved.Transparency = obj.Transparency
								TweenService:Create(obj, tweenInfo, { Transparency = 1 }):Play()
							end

							if next(saved) then
								originalTransparencies[obj] = saved
							end
						end
					end
				end
			end
		end
	end

	local function showSectionElements(tabData)
		if not tabData then return end
		local tweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

		for _, side in ipairs({tabData.Left, tabData.Right}) do
			for _, sectionLabel in ipairs(side:GetChildren()) do
				if sectionLabel:IsA("TextLabel") and sectionLabel.Name == "Section" then
					local sectionContainer = sectionLabel:FindFirstChild("Section")
					if sectionContainer then
						for _, obj in ipairs(sectionContainer:GetDescendants()) do
							local saved = originalTransparencies[obj]
							if saved then
								local goal = {}
								if saved.BackgroundTransparency ~= nil then goal.BackgroundTransparency = saved.BackgroundTransparency end
								if saved.TextTransparency ~= nil then goal.TextTransparency = saved.TextTransparency end
								if saved.ImageTransparency ~= nil then goal.ImageTransparency = saved.ImageTransparency end
								if saved.Transparency ~= nil then
									goal.Transparency = saved.Transparency
								end

								if next(goal) then
									TweenService:Create(obj, tweenInfo, goal):Play()
								end
							end
						end
					end
				end
			end
		end

	end

	Window.hideAllSections = hideAllSections
	Window.showSectionElements = showSectionElements


	local oldToggle = Window.Toggle

	function Window:Toggle()
		isOpen = not isOpen

		local currentTabData = Window.ActiveTab and Window.Tabs[Window.ActiveTab]
		local tabButtonsFrame = Window.TabButtons["1"]

		if isOpen then
			Window["2"].Visible = true

			local windowTween = TweenService:Create(Window["2"], TweenInfo.new(0.05, Enum.EasingStyle.Quad), {
				BackgroundTransparency = 0,
				Size = UDim2.new(0, 880, 0, 600),
			})
			local strokeTween = TweenService:Create(Window["4"], TweenInfo.new(0.05, Enum.EasingStyle.Quad), { Transparency = 0 })

			windowTween:Play()
			strokeTween:Play()

			TweenService:Create(Window["6"], TweenInfo.new(0.1, Enum.EasingStyle.Quad), { GroupTransparency = 0 }):Play()

			TweenService:Create(Window.Top["3"], TweenInfo.new(0.25, Enum.EasingStyle.Quad), { TextTransparency = 0 }):Play()
			TweenService:Create(Window.Top["5"], TweenInfo.new(0.25, Enum.EasingStyle.Quad), { ImageTransparency = 0 }):Play()

			local tabButtonsTween = TweenService:Create(tabButtonsFrame, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {
				Position = UDim2.new(0, 0, 0.949, -16),
				Size = UDim2.new(1, 0, 0, 32)
			})
			tabButtonsTween:Play()

			local centerTween = TweenService:Create(Window.Center["1"], TweenInfo.new(0.05, Enum.EasingStyle.Quad), { BackgroundTransparency = 0 })
			centerTween:Play()

			restoreTabButtonsProperly()

			if currentTabData then
				animateSections(currentTabData)
				showSectionElements(currentTabData)
			end

			highlightActiveTabButton()

		else
			Window.DialogFrame["1"].Visible = false
			TweenService:Create(Window["6"], TweenInfo.new(0.1, Enum.EasingStyle.Quad), { GroupTransparency = 1 }):Play()

			TweenService:Create(Window.Top["3"], TweenInfo.new(0.05, Enum.EasingStyle.Quad), { TextTransparency = 1 }):Play()
			TweenService:Create(Window.Top["5"], TweenInfo.new(0.05, Enum.EasingStyle.Quad), { ImageTransparency = 1 }):Play()

			TweenService:Create(tabButtonsFrame, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {
				Position = UDim2.new(0, 0, 0.994, -16),
				Size = UDim2.new(1, 0, -0.045, 32)
			}):Play()

			for _, child in ipairs(tabButtonsFrame:GetDescendants()) do
				if child:IsA("GuiObject") then
					local goal = { BackgroundTransparency = 1 }
					if child:IsA("TextLabel") or child:IsA("TextButton") then
						goal.TextTransparency = 1
					end
					if child:IsA("ImageLabel") or child:IsA("ImageButton") then
						goal.ImageTransparency = 1
					end
					TweenService:Create(child, TweenInfo.new(0.1, Enum.EasingStyle.Quad), goal):Play()
				elseif child:IsA("UIStroke") then
					TweenService:Create(child, TweenInfo.new(0.1), { Transparency = 1 }):Play()
				end
			end

			TweenService:Create(Window.Center["1"], TweenInfo.new(0.05, Enum.EasingStyle.Quad), { BackgroundTransparency = 1 }):Play()

			TweenService:Create(Window["2"], TweenInfo.new(0.05, Enum.EasingStyle.Quad), { BackgroundTransparency = 1 }):Play()
			TweenService:Create(Window["4"], TweenInfo.new(0.05, Enum.EasingStyle.Quad), { Transparency = 1 }):Play()

			if currentTabData then
				hideAllSections(currentTabData)
			end

			task.delay(0.3, function()
				if not isOpen then
					Window["2"].Visible = false
				end
			end)
		end
	end

	function Window:Open()
		if isOpen then return end
		self:Toggle()
	end

	function Window:Close()
		if not isOpen then return end
		self:Toggle()
	end


	local tabButtonsOpenTween = TweenService:Create(Window.TabButtons["1"], TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
		BackgroundTransparency = 0
	})

	local oldToggle = Window.Toggle
	function Window:Toggle()
		oldToggle()

		if isOpen then
			task.spawn(function()
				task.wait(0.05)
				restoreTabButtonsProperly()
				task.wait(0.05)
				highlightActiveTabButton()
			end)
		end
	end
	
	local dragging = false
	local dragInput
	local dragStart
	local startPos

	local UserInputService = game:GetService("UserInputService")

	local function update(input)
		local delta = input.Position - dragStart
		Window["2"].Position = UDim2.new(
			startPos.X.Scale,
			startPos.X.Offset + delta.X,
			startPos.Y.Scale,
			startPos.Y.Offset + delta.Y
		)
	end

	Window["2"].InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = Window["2"].Position

			local connection
			connection = input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
					connection:Disconnect()
				end
			end)
		end
	end)

	Window["2"].InputChanged:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			dragInput = input
			update(input)
		end
	end)
	
	Window.Top["1"].InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = Window["2"].Position

			local connection
			connection = input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
					connection:Disconnect()
				end
			end)
		end
	end)

	Window.Top["1"].InputChanged:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			dragInput = input
			update(input)
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			update(input)
		end
	end)
	
	
	return Window
end

return Library