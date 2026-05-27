.class public final enum Lj$/nio/file/attribute/O;
.super Ljava/lang/Enum;


# static fields
.field public static final enum GROUP_EXECUTE:Lj$/nio/file/attribute/O;

.field public static final enum GROUP_READ:Lj$/nio/file/attribute/O;

.field public static final enum GROUP_WRITE:Lj$/nio/file/attribute/O;

.field public static final enum OTHERS_EXECUTE:Lj$/nio/file/attribute/O;

.field public static final enum OTHERS_READ:Lj$/nio/file/attribute/O;

.field public static final enum OTHERS_WRITE:Lj$/nio/file/attribute/O;

.field public static final enum OWNER_EXECUTE:Lj$/nio/file/attribute/O;

.field public static final enum OWNER_READ:Lj$/nio/file/attribute/O;

.field public static final enum OWNER_WRITE:Lj$/nio/file/attribute/O;

.field private static final synthetic a:[Lj$/nio/file/attribute/O;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lj$/nio/file/attribute/O;

    const-string v1, "OWNER_READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/O;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/O;->OWNER_READ:Lj$/nio/file/attribute/O;

    new-instance v1, Lj$/nio/file/attribute/O;

    const-string v3, "OWNER_WRITE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lj$/nio/file/attribute/O;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lj$/nio/file/attribute/O;->OWNER_WRITE:Lj$/nio/file/attribute/O;

    new-instance v3, Lj$/nio/file/attribute/O;

    const-string v5, "OWNER_EXECUTE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lj$/nio/file/attribute/O;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lj$/nio/file/attribute/O;->OWNER_EXECUTE:Lj$/nio/file/attribute/O;

    new-instance v5, Lj$/nio/file/attribute/O;

    const-string v7, "GROUP_READ"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lj$/nio/file/attribute/O;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lj$/nio/file/attribute/O;->GROUP_READ:Lj$/nio/file/attribute/O;

    new-instance v7, Lj$/nio/file/attribute/O;

    const-string v9, "GROUP_WRITE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lj$/nio/file/attribute/O;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lj$/nio/file/attribute/O;->GROUP_WRITE:Lj$/nio/file/attribute/O;

    new-instance v9, Lj$/nio/file/attribute/O;

    const-string v11, "GROUP_EXECUTE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lj$/nio/file/attribute/O;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lj$/nio/file/attribute/O;->GROUP_EXECUTE:Lj$/nio/file/attribute/O;

    new-instance v11, Lj$/nio/file/attribute/O;

    const-string v13, "OTHERS_READ"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lj$/nio/file/attribute/O;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lj$/nio/file/attribute/O;->OTHERS_READ:Lj$/nio/file/attribute/O;

    new-instance v13, Lj$/nio/file/attribute/O;

    const-string v15, "OTHERS_WRITE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lj$/nio/file/attribute/O;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lj$/nio/file/attribute/O;->OTHERS_WRITE:Lj$/nio/file/attribute/O;

    new-instance v15, Lj$/nio/file/attribute/O;

    const-string v14, "OTHERS_EXECUTE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lj$/nio/file/attribute/O;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lj$/nio/file/attribute/O;->OTHERS_EXECUTE:Lj$/nio/file/attribute/O;

    const/16 v14, 0x9

    new-array v14, v14, [Lj$/nio/file/attribute/O;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lj$/nio/file/attribute/O;->a:[Lj$/nio/file/attribute/O;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/nio/file/attribute/O;
    .locals 1

    const-class v0, Lj$/nio/file/attribute/O;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/nio/file/attribute/O;

    return-object p0
.end method

.method public static values()[Lj$/nio/file/attribute/O;
    .locals 1

    sget-object v0, Lj$/nio/file/attribute/O;->a:[Lj$/nio/file/attribute/O;

    invoke-virtual {v0}, [Lj$/nio/file/attribute/O;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/nio/file/attribute/O;

    return-object v0
.end method
