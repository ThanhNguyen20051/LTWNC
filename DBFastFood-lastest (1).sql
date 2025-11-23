SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](250) NOT NULL,
	[Password] [nvarchar](250) NOT NULL,
	[Role] [int] NOT NULL,
	[FullName] [nvarchar](250) NULL,
	[Gender] [int] NULL,
	[PhoneNumber] [nvarchar](250) NULL,
	[Address] [nvarchar](250) NULL,
	[AvatarUrl] [nvarchar](max) NULL,
	[IsActive] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccountId] [int] NULL,
	[ProductDetailId] [int] NULL,
	[Quantity] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartTopping]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartTopping](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CartID] [int] NULL,
	[ToppingID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
 CONSTRAINT [PK_CartTopping] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoodsIssue]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsIssue](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NULL,
	[GoodIssueCode] [nvarchar](150) NULL,
	[Decription] [nvarchar](550) NULL,
	[IssueDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_GoodsIssue] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoodsIssueDetails]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsIssueDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GoodIssueID] [int] NULL,
	[MaterialID] [int] NULL,
	[Quantity] [decimal](18, 2) NULL,
	[Decription] [nvarchar](550) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_GoodsIssueDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoodsIssueFile]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsIssueFile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GoodsIssueID] [int] NOT NULL,
	[FileUrl] [nvarchar](max) NULL,
	[FileName] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_GoodsIssueFile] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoodsReceipt]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsReceipt](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccoutID] [int] NOT NULL,
	[SupplierID] [int] NOT NULL,
	[ReceiptedDate] [datetime] NOT NULL,
	[GoodsReceiptCode] [nvarchar](250) NOT NULL,
	[Decription] [nvarchar](550) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_GoodsReceipt] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoodsReceiptDetails]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsReceiptDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GoodsReceiptID] [int] NOT NULL,
	[MaterialID] [int] NOT NULL,
	[Quantity] [decimal](18, 2) NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_GoodsReceiptDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoodsReceiptFile]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsReceiptFile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GoodsReceiptID] [int] NOT NULL,
	[FileUrl] [nvarchar](max) NULL,
	[FileName] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_GoodsReceiptFile] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LinkUrl]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinkUrl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TypeUrl] [nvarchar](250) NULL,
	[LinkUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_LinkUrl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UnitID] [int] NOT NULL,
	[MaterialCode] [nvarchar](250) NOT NULL,
	[MaterialName] [nvarchar](250) NULL,
	[MinQuantity] [decimal](18, 2) NOT NULL,
	[Decription] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NULL,
	[OrderCode] [nvarchar](250) NULL,
	[CustomerName] [nvarchar](250) NULL,
	[PhoneNumber] [nvarchar](250) NULL,
	[Address] [nvarchar](250) NULL,
	[Status] [int] NULL,
	[ReasonCancel] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[ProductDetailID] [int] NULL,
	[Quantity] [int] NULL,
	[TotalMoney] [decimal](18, 2) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetailsTopping]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetailsTopping](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDetailsID] [int] NOT NULL,
	[ToppingID] [int] NOT NULL,
	[ToppingPrice] [decimal](18, 2) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
 CONSTRAINT [PK_OrderDetailsTopping] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductCode] [nvarchar](250) NULL,
	[ProductName] [nvarchar](250) NULL,
	[IsActive] [bit] NULL,
	[Description] [nvarchar](250) NULL,
	[ProductTypeID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetails]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[ProductSizeID] [int] NULL,
	[Price] [decimal](18, 2) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_ProductDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImage]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[ImageName] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_ProductImage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSize]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSize](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SizeCode] [nvarchar](250) NULL,
	[SizeName] [nvarchar](250) NULL,
	[Description] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_ProductSize] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTopping]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTopping](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ToppingID] [int] NULL,
	[ProductID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
 CONSTRAINT [PK_ProductTopping] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TypeCode] [nvarchar](250) NULL,
	[TypeName] [nvarchar](250) NULL,
	[GroupTypeID] [int] NULL,
	[Description] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierCode] [nvarchar](150) NOT NULL,
	[SupplierName] [nvarchar](250) NULL,
	[PhoneNumber] [nvarchar](250) NULL,
	[Decription] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topping]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topping](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ToppingCode] [nvarchar](150) NULL,
	[ToppingName] [nvarchar](250) NULL,
	[ToppingPrice] [decimal](18, 2) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Topping] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UnitCode] [nvarchar](150) NULL,
	[UnitName] [nvarchar](250) NULL,
	[Note] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO






-- Tạo loại sản phẩm (ProductType)
INSERT INTO ProductType(TypeCode, TypeName, IsDelete)
VALUES
('BURG', N'Burger', 0),
('PIZZA', N'Pizza', 0),
('CHICK', N'Chicken', 0),
('SALAD', N'Salad', 0),
('DRNK', N'Drink', 0),
('SIDE', N'Side Dish', 0),
('SETS', N'Set Menu', 0);

-- Tạo kích thước sản phẩm
INSERT INTO ProductSize(SizeCode, SizeName, IsDelete)
VALUES
('S', N'Small', 0),
('M', N'Medium', 0),
('L', N'Large', 0);

DECLARE @S INT = (SELECT TOP 1 ID FROM ProductSize WHERE SizeCode='S');
DECLARE @M INT = (SELECT TOP 1 ID FROM ProductSize WHERE SizeCode='M');
DECLARE @L INT = (SELECT TOP 1 ID FROM ProductSize WHERE SizeCode='L');

-- Map loại sản phẩm → hình ảnh đại diện cố định
DECLARE @ImageMap TABLE (TypeCode NVARCHAR(10), BaseUrl NVARCHAR(400))
INSERT INTO @ImageMap VALUES
('BURG', 'https://images.unsplash.com/photo-1550547660-d9450f859349?w=800'),
('PIZZA','https://images.unsplash.com/photo-1550547660-d9450f859349?w=800'),
('CHICK','https://images.unsplash.com/photo-1550547660-d9450f859349?w=800'),
('SALAD','https://images.unsplash.com/photo-1550547660-d9450f859349?w=800'),
('DRNK','https://images.unsplash.com/photo-1550547660-d9450f859349?w=800'),
('SIDE','https://images.unsplash.com/photo-1550547660-d9450f859349?w=800'),
('SETS','https://images.unsplash.com/photo-1551782450-17144efb9c50?w=800');

-- Sinh dữ liệu ảo cho 10 món mỗi loại
DECLARE @n INT = 1;
WHILE @n <= 10
BEGIN
    INSERT INTO Product(ProductCode, ProductName, IsActive, Description, ProductTypeID, IsDeleted, CreatedDate)
    SELECT 
        pt.TypeCode + RIGHT('00' + CAST(@n AS NVARCHAR(2)), 2),
        pt.TypeName + N' ' + CAST(@n AS NVARCHAR(10)),
        1,
        N'Món ' + pt.TypeName + N' số ' + CAST(@n AS NVARCHAR(10)),
        pt.ID,
        0,
        GETDATE()
    FROM ProductType pt;

    SET @n = @n + 1;
END

-- Thêm giá và ảnh cho từng món
INSERT INTO ProductDetails(ProductID, ProductSizeID, Price, IsDelete)
SELECT p.ID, s.ID, 
    CASE s.SizeCode 
        WHEN 'S' THEN 45000 + (p.ID % 10) * 1000
        WHEN 'M' THEN 55000 + (p.ID % 10) * 1000
        WHEN 'L' THEN 65000 + (p.ID % 10) * 1000
    END,
    0
FROM Product p
CROSS JOIN ProductSize s;

-- Ảnh sản phẩm cố định theo loại
INSERT INTO ProductImage(ProductID, ImageUrl, ImageName, IsDelete)
SELECT p.ID,
       im.BaseUrl,
       LOWER(p.ProductCode) + '.jpg',
       0
FROM Product p
JOIN ProductType t ON p.ProductTypeID = t.ID
JOIN @ImageMap im ON im.TypeCode = t.TypeCode;		

--------------------Chạy bổ sung phần này sau--------------------------

ALTER TABLE Product
ADD 
    Ingredients NVARCHAR(250) NULL,
    Flavor NVARCHAR(250) NULL;

UPDATE Product
SET 
    Ingredients = 
        CASE 
            -- Burger
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='BURG') AND ProductCode = 'BURG01' THEN N'Bánh mì, thịt bò, phô mai, rau xà lách, sốt đặc biệt'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='BURG') AND ProductCode = 'BURG02' THEN N'Bánh mì, thịt gà, rau xà lách, sốt cà chua'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='BURG') AND ProductCode = 'BURG03' THEN N'Bánh mì, thịt bò, phô mai cheddar, sốt BBQ'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='BURG') AND ProductCode = 'BURG04' THEN N'Bánh mì, thịt nai, rau sống, sốt mayonaise'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='BURG') AND ProductCode = 'BURG05' THEN N'Bánh mì, phô mai, thịt viên, rau xà lách'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='BURG') AND ProductCode = 'BURG06' THEN N'Bánh mì, thịt heo, hành tây, sốt mù tạt'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='BURG') AND ProductCode = 'BURG07' THEN N'Bánh mì, thịt gà rán, khoai tây chiên, sốt chua ngọt'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='BURG') AND ProductCode = 'BURG08' THEN N'Bánh mì, thịt bò, phô mai, rau dưa, sốt thịt'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='BURG') AND ProductCode = 'BURG09' THEN N'Bánh mì, thịt gà, xà lách, sốt chua ngọt'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='BURG') AND ProductCode = 'BURG10' THEN N'Bánh mì, thịt bò, rau xà lách, sốt đặc biệt'
            
            -- Pizza
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='PIZZA') AND ProductCode = 'PIZZA01' THEN N'Đế bánh, phô mai mozzarella, xúc xích, sốt cà chua'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='PIZZA') AND ProductCode = 'PIZZA02' THEN N'Đế bánh, phô mai, hải sản, sốt kem'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='PIZZA') AND ProductCode = 'PIZZA03' THEN N'Đế bánh, phô mai, thịt gà, sốt BBQ'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='PIZZA') AND ProductCode = 'PIZZA04' THEN N'Đế bánh, phô mai, xúc xích, nấm, sốt cà chua'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='PIZZA') AND ProductCode = 'PIZZA05' THEN N'Đế bánh, phô mai, thịt bò, sốt thịt'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='PIZZA') AND ProductCode = 'PIZZA06' THEN N'Đế bánh, phô mai, rau củ, sốt kem'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='PIZZA') AND ProductCode = 'PIZZA07' THEN N'Đế bánh, phô mai, thịt heo, sốt tỏi'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='PIZZA') AND ProductCode = 'PIZZA08' THEN N'Đế bánh, phô mai, thịt gà, sốt BBQ'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='PIZZA') AND ProductCode = 'PIZZA09' THEN N'Đế bánh, phô mai, xúc xích, sốt cà chua'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='PIZZA') AND ProductCode = 'PIZZA10' THEN N'Đế bánh, phô mai, thịt bò, sốt thịt'

            -- Chicken
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='CHICK') AND ProductCode = 'CHICK01' THEN N'Thịt gà, bột chiên, tiêu đen, tỏi phi'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='CHICK') AND ProductCode = 'CHICK02' THEN N'Thịt gà chiên giòn, xà lách, sốt chua ngọt'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='CHICK') AND ProductCode = 'CHICK03' THEN N'Thịt gà xào cay, hành tây, rau sống'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='CHICK') AND ProductCode = 'CHICK04' THEN N'Thịt gà nướng, khoai tây chiên, sốt BBQ'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='CHICK') AND ProductCode = 'CHICK05' THEN N'Thịt gà, rau xà lách, sốt mù tạt'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='CHICK') AND ProductCode = 'CHICK06' THEN N'Thịt gà xào tỏi, tiêu đen, hành lá'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='CHICK') AND ProductCode = 'CHICK07' THEN N'Thịt gà nướng, xà lách, sốt cà chua'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='CHICK') AND ProductCode = 'CHICK08' THEN N'Thịt gà chiên giòn, xà lách, sốt thịt'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='CHICK') AND ProductCode = 'CHICK09' THEN N'Thịt gà xào ớt, gia vị, rau củ'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='CHICK') AND ProductCode = 'CHICK10' THEN N'Thịt gà, rau xà lách, sốt BBQ'

            -- Salad
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='SALAD') AND ProductCode = 'SALAD01' THEN N'Rau tươi, cà chua, trứng, sốt mè rang'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='SALAD') AND ProductCode = 'SALAD02' THEN N'Rau xà lách, cà chua, sốt chua ngọt'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='SALAD') AND ProductCode = 'SALAD03' THEN N'Rau sống, trứng luộc, sốt dầu giấm'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='SALAD') AND ProductCode = 'SALAD04' THEN N'Rau xà lách, cà rốt, sốt hạt tiêu'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='SALAD') AND ProductCode = 'SALAD05' THEN N'Rau sống, khoai tây, sốt mayonnaise'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='SALAD') AND ProductCode = 'SALAD06' THEN N'Rau tươi, trứng, sốt dầu mè'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='SALAD') AND ProductCode = 'SALAD07' THEN N'Rau xà lách, cà rốt, sốt mayonnaise'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='SALAD') AND ProductCode = 'SALAD08' THEN N'Rau tươi, cà chua, sốt mè rang'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='SALAD') AND ProductCode = 'SALAD09' THEN N'Rau sống, cà chua, sốt dầu giấm'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='SALAD') AND ProductCode = 'SALAD10' THEN N'Rau tươi, xà lách, sốt chua ngọt'
            
            ELSE N'Nguyên liệu khác'
        END,
    Flavor = 
        CASE 
            -- Burger
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='BURG') AND ProductCode = 'BURG01' THEN N'Đậm đà, béo ngậy'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='BURG') AND ProductCode = 'BURG02' THEN N'Đậm đà, ngon miệng'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='BURG') AND ProductCode = 'BURG03' THEN N'Mặn mà, đậm đà'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='BURG') AND ProductCode = 'BURG04' THEN N'Ngon miệng, béo ngậy'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='BURG') AND ProductCode = 'BURG05' THEN N'Ngọt ngào, béo ngậy'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='BURG') AND ProductCode = 'BURG06' THEN N'Vị thơm ngon, đậm đà'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='BURG') AND ProductCode = 'BURG07' THEN N'Vị ngọt ngào, thơm ngon'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='BURG') AND ProductCode = 'BURG08' THEN N'Ngọt ngào, mặn mà'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='BURG') AND ProductCode = 'BURG09' THEN N'Mặn mà, đậm đà'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='BURG') AND ProductCode = 'BURG10' THEN N'Vị béo ngậy, thơm ngon'

            -- Pizza
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='PIZZA') AND ProductCode = 'PIZZA01' THEN N'Giòn thơm, phô mai tan chảy'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='PIZZA') AND ProductCode = 'PIZZA02' THEN N'Giòn, cay nồng'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='PIZZA') AND ProductCode = 'PIZZA03' THEN N'Mặn mà, thơm ngon'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='PIZZA') AND ProductCode = 'PIZZA04' THEN N'Mềm dẻo, ngon miệng'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='PIZZA') AND ProductCode = 'PIZZA05' THEN N'Mát lạnh, thơm ngon'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='PIZZA') AND ProductCode = 'PIZZA06' THEN N'Giòn thơm, phô mai tan chảy'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='PIZZA') AND ProductCode = 'PIZZA07' THEN N'Mặn mà, giòn tan'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='PIZZA') AND ProductCode = 'PIZZA08' THEN N'Mềm dẻo, thơm ngon'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='PIZZA') AND ProductCode = 'PIZZA09' THEN N'Mềm dẻo, phô mai'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='PIZZA') AND ProductCode = 'PIZZA10' THEN N'Phô mai tan chảy, đậm đà'

            -- Chicken
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='CHICK') AND ProductCode = 'CHICK01' THEN N'Vị cay nhẹ, giòn rụm'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='CHICK') AND ProductCode = 'CHICK02' THEN N'Cay nhẹ, giòn rụm'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='CHICK') AND ProductCode = 'CHICK03' THEN N'Vị ngọt ngào, béo ngậy'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='CHICK') AND ProductCode = 'CHICK04' THEN N'Giòn rụm, cay cay'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='CHICK') AND ProductCode = 'CHICK05' THEN N'Mặn mà, thơm ngon'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='CHICK') AND ProductCode = 'CHICK06' THEN N'Cay nhẹ, giòn rụm'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='CHICK') AND ProductCode = 'CHICK07' THEN N'Vị ngọt ngào, thơm ngon'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='CHICK') AND ProductCode = 'CHICK08' THEN N'Giòn, cay cay'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='CHICK') AND ProductCode = 'CHICK09' THEN N'Mặn mà, đậm đà'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='CHICK') AND ProductCode = 'CHICK10' THEN N'Vị giòn ngọt, thơm ngon'

            -- Salad
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='SALAD') AND ProductCode = 'SALAD01' THEN N'Tươi mát, thanh nhẹ'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='SALAD') AND ProductCode = 'SALAD02' THEN N'Mát lạnh, tươi mát'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='SALAD') AND ProductCode = 'SALAD03' THEN N'Tươi mát, thanh nhẹ'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='SALAD') AND ProductCode = 'SALAD04' THEN N'Mát lạnh, thanh mát'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='SALAD') AND ProductCode = 'SALAD05' THEN N'Mát lạnh, nhẹ nhàng'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='SALAD') AND ProductCode = 'SALAD06' THEN N'Tươi mát, thanh nhẹ'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='SALAD') AND ProductCode = 'SALAD07' THEN N'Tươi mát, thanh nhẹ'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='SALAD') AND ProductCode = 'SALAD08' THEN N'Mát lạnh, tươi mát'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='SALAD') AND ProductCode = 'SALAD09' THEN N'Mát lạnh, thanh nhẹ'
            WHEN ProductTypeID IN (SELECT ID FROM ProductType WHERE TypeCode='SALAD') AND ProductCode = 'SALAD10' THEN N'Tươi mát, thanh nhẹ'
            ELSE N'Hương vị đặc biệt'
        END;


		SELECT ProductName, Ingredients, Flavor
FROM Product
WHERE Ingredients IS NOT NULL AND Flavor IS NOT NULL;


-- ============================================
-- Script: Add PaymentMethod column to Order table
-- Description: Thêm column PaymentMethod vào bảng Order nếu chưa tồn tại
-- ============================================

-- Kiểm tra và thêm column PaymentMethod nếu chưa có
IF NOT EXISTS (
    SELECT 1 
    FROM sys.columns 
    WHERE object_id = OBJECT_ID(N'[dbo].[Order]') 
    AND name = 'PaymentMethod'
)
BEGIN
    ALTER TABLE [dbo].[Order]
    ADD PaymentMethod NVARCHAR(50) NULL;
    
    PRINT 'Đã thêm column PaymentMethod vào bảng Order.';
END
ELSE
BEGIN
    PRINT 'Column PaymentMethod đã tồn tại trong bảng Order.';
END
GO

-- Cập nhật giá trị mặc định cho các đơn hàng cũ (nếu cần)
-- UPDATE [dbo].[Order] 
-- SET PaymentMethod = 'cod' 
-- WHERE PaymentMethod IS NULL;


-- ============================================
-- Script: Thêm tài khoản Admin vào database
-- ============================================
-- Tài khoản Admin mặc định:
-- Email: admin@fastfood.com
-- Password: Admin@123 (đã hash SHA256)
-- Role: 1 (Admin)
-- ============================================


-- Kiểm tra xem email đã tồn tại chưa
IF NOT EXISTS (SELECT 1 FROM Account WHERE Email = 'admin@fastfood.com' AND IsDelete = 0)
BEGIN
    INSERT INTO Account (
        Email,
        Password,
        FullName,
        PhoneNumber,
        Role,
        IsActive,
        IsDelete,
        CreatedDate
    )
    VALUES (
        'admin@fastfood.com',
        'Admin@123', -- Password: Admin@123 (SHA256 + Base64) - Cần tính lại đúng
        N'Administrator',
        '0123456789',
        1, -- Role = 1 (Admin)
        1, -- IsActive = 1 (Active)
        0, -- IsDelete = 0 (Not deleted)
        GETDATE() -- CreatedDate = Now
    );
    
    PRINT 'Đã thêm tài khoản Admin thành công!';
    PRINT 'Email: admin@fastfood.com';
    PRINT 'Password: Admin@123';	
    PRINT 'Role: Admin (1)';
END
ELSE
BEGIN
    PRINT 'Tài khoản Admin đã tồn tại!';
    
    -- Cập nhật lại thông tin nếu muốn reset
    UPDATE Account
    SET 
        Password = 'Admin@123', -- Password: Admin@123 - Cần tính lại đúng
        FullName = N'Administrator',
        Role = 1,
        IsActive = 1,
        IsDelete = 0,
        UpdatedDate = GETDATE()
    WHERE Email = 'admin@fastfood.com';
    
    PRINT 'Đã cập nhật thông tin tài khoản Admin!';
    PRINT 'Email: admin@fastfood.com';
    PRINT 'Password: Admin@123';
    PRINT 'Role: Admin (1)';
END
GO

-- Kiểm tra kết quả
SELECT 
    ID,
    Email,
    FullName,
    Role,
    CASE WHEN Role = 1 THEN N'Admin' ELSE N'User' END AS RoleName,
    IsActive,
    IsDelete,
    CreatedDate
FROM Account
WHERE Email = 'admin@fastfood.com';
GO
















-- Database Promotion
---------------------------------------------------------
-- XÓA BẢNG PROMOTION NẾU ĐANG TỒN TẠI
---------------------------------------------------------
IF OBJECT_ID(N'dbo.Promotion', 'U') IS NOT NULL
    DROP TABLE dbo.Promotion;
GO


---------------------------------------------------------
-- TẠO BẢNG PROMOTION CHUẨN THEO CODE MODEL
---------------------------------------------------------
IF OBJECT_ID(N'dbo.Promotion', 'U') IS NOT NULL
    DROP TABLE dbo.Promotion;
GO

CREATE TABLE dbo.Promotion
(
    Id            INT IDENTITY(1,1) CONSTRAINT PK_Promotion PRIMARY KEY,
    [Name]        NVARCHAR(250) NOT NULL,
    [Code]        NVARCHAR(50) NULL,
    [Type]        INT NOT NULL,                    -- 1:% ; 2:VNĐ
    [Value]       DECIMAL(18,2) NOT NULL,
    MaxDiscount   DECIMAL(18,2) NULL,
    MinOrderValue DECIMAL(18,2) NULL,

    StartDate     DATETIME2 NOT NULL,
    EndDate       DATETIME2 NOT NULL,

    IsActive      BIT NOT NULL CONSTRAINT DF_Promotion_IsActive DEFAULT(1),
    BannerUrl     NVARCHAR(500) NULL,
    [Description] NVARCHAR(MAX) NULL,

    CreatedDate   DATETIME2 NULL 
                  CONSTRAINT DF_Promotion_Created DEFAULT (SYSUTCDATETIME()),
    CreatedBy     NVARCHAR(150) NULL,

    UpdatedDate   DATETIME2 NULL,
    UpdatedBy     NVARCHAR(150) NULL,

    IsDeleted     BIT NOT NULL CONSTRAINT DF_Promotion_IsDeleted DEFAULT(0)
);
GO

---------------------------------------------------------
-- INDEX
---------------------------------------------------------
CREATE INDEX IX_Promotion_ActiveDates 
    ON dbo.Promotion(IsActive, IsDeleted, StartDate, EndDate);
GO

CREATE INDEX IX_Promotion_Code 
    ON dbo.Promotion([Code]);
GO

---------------------------------------------------------
-- VIEW KHÁCH HIỆU LỰC
---------------------------------------------------------
IF OBJECT_ID(N'dbo.vActivePromotions', 'V') IS NOT NULL
    DROP VIEW dbo.vActivePromotions;
GO

CREATE VIEW dbo.vActivePromotions AS
SELECT *
FROM dbo.Promotion
WHERE IsDeleted = 0
  AND IsActive = 1
  AND EndDate >= SYSUTCDATETIME();
GO

---------------------------------------------------------
-- STORED PROCEDURE GET ACTIVE PROMOS
---------------------------------------------------------
IF OBJECT_ID(N'dbo.sp_Promotion_GetActive', 'P') IS NOT NULL
    DROP PROC dbo.sp_Promotion_GetActive;
GO

CREATE PROC dbo.sp_Promotion_GetActive
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM dbo.Promotion
    WHERE IsDeleted = 0
      AND IsActive = 1
      AND EndDate >= SYSUTCDATETIME()
    ORDER BY StartDate DESC;
END
GO

---------------------------------------------------------
-- DỮ LIỆU MẪU
---------------------------------------------------------
INSERT INTO dbo.Promotion
([Name], [Code], [Type], [Value], MaxDiscount, MinOrderValue, 
 StartDate, EndDate, IsActive, BannerUrl, [Description])
VALUES
(N'Giảm 20% đơn đầu tiên', N'START20', 1, 20, NULL, NULL,
 '2025-11-01', '2025-12-30', 1, N'/images/promo1.jpg', 
 N'Áp dụng cho khách hàng mới.'),

(N'Mua 1 tặng 1 Burger', N'BURGERBOGO', 2, 50000, NULL, NULL,
 '2025-11-05', '2025-12-31', 1, N'/images/promo2.jpg', 
 N'Áp dụng thứ 6 hàng tuần.'),

(N'Combo trưa tiết kiệm', N'LUNCH15', 1, 15, NULL, 100000,
 DATEADD(DAY,-3,SYSUTCDATETIME()), DATEADD(DAY,30,SYSUTCDATETIME()),
 1, N'/images/promo3.jpg', N'Áp dụng 11h–14h mỗi ngày.');
GO

---------------------------------------------------------
-- CHECK
---------------------------------------------------------
---SELECT * FROM Promotion ORDER BY Id DESC;

SELECT * FROM dbo.Promotion;
SELECT * FROM dbo.vActivePromotions;  -- chỉ khuyến mãi đang hiệu lực
EXEC dbo.sp_Promotion_GetActive;      -- proc test









---------------------------------------------------------
-- TẠO BẢNG CONTACT ĐỂ LƯU THÔNG TIN LIÊN HỆ
---------------------------------------------------------
IF OBJECT_ID(N'dbo.Contact', 'U') IS NOT NULL
    DROP TABLE dbo.Contact;
GO

CREATE TABLE dbo.Contact
(
    ID            INT IDENTITY(1,1) CONSTRAINT PK_Contact PRIMARY KEY,
    [Name]        NVARCHAR(250) NOT NULL,
    Email         NVARCHAR(250) NOT NULL,
    PhoneNumber   NVARCHAR(250) NULL,
    Address       NVARCHAR(500) NULL,
    Content       NVARCHAR(MAX) NOT NULL,
    Status        INT NOT NULL DEFAULT 0,              -- 0: Chưa đọc, 1: Đã đọc, 2: Đã phản hồi
    
    CreatedDate   DATETIME NULL DEFAULT GETDATE(),
    CreatedBy     NVARCHAR(150) NULL,
    
    UpdatedDate   DATETIME NULL,
    UpdatedBy     NVARCHAR(150) NULL,
    
    IsDelete      BIT NOT NULL DEFAULT 0
);
GO

---------------------------------------------------------
-- INDEX
---------------------------------------------------------
CREATE INDEX IX_Contact_Status 
    ON dbo.Contact(Status, IsDelete);
GO

CREATE INDEX IX_Contact_CreatedDate 
    ON dbo.Contact(CreatedDate DESC);
GO


SELECT * FROM  dbo.Contact;





