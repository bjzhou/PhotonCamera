.class public final enum Lfwl;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lfwl;

.field public static final enum b:Lfwl;

.field public static final enum c:Lfwl;

.field public static final enum d:Lfwl;

.field public static final enum e:Lfwl;

.field public static final enum f:Lfwl;

.field private static final synthetic g:[Lfwl;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lfwl;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfwl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfwl;->a:Lfwl;

    new-instance v1, Lfwl;

    const-string v3, "NORMAL_WITH_FLASH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lfwl;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfwl;->b:Lfwl;

    new-instance v3, Lfwl;

    const-string v5, "HDR_PLUS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lfwl;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lfwl;->c:Lfwl;

    new-instance v5, Lfwl;

    const-string v7, "HDR_PLUS_WITH_TORCH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lfwl;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lfwl;->d:Lfwl;

    new-instance v7, Lfwl;

    const-string v9, "HDR_PLUS_ZSL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lfwl;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lfwl;->e:Lfwl;

    new-instance v9, Lfwl;

    const-string v11, "LONG_EXPOSURE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lfwl;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lfwl;->f:Lfwl;

    const/4 v11, 0x6

    new-array v11, v11, [Lfwl;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lfwl;->g:[Lfwl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lfwl;
    .locals 1

    sget-object v0, Lfwl;->g:[Lfwl;

    invoke-virtual {v0}, [Lfwl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfwl;

    return-object v0
.end method
