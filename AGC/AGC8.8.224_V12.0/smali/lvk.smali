.class public final enum Llvk;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Llvk;

.field public static final enum b:Llvk;

.field public static final enum c:Llvk;

.field public static final enum d:Llvk;

.field public static final enum e:Llvk;

.field public static final enum f:Llvk;

.field public static final enum g:Llvk;

.field private static final synthetic h:[Llvk;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Llvk;

    const-string v1, "UNKNOWN_UPLOAD_STATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Llvk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llvk;->a:Llvk;

    new-instance v1, Llvk;

    const-string v3, "UPLOAD_NOT_REQUESTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Llvk;-><init>(Ljava/lang/String;I)V

    sput-object v1, Llvk;->b:Llvk;

    new-instance v3, Llvk;

    const-string v5, "UPLOAD_PENDING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Llvk;-><init>(Ljava/lang/String;I)V

    sput-object v3, Llvk;->c:Llvk;

    new-instance v5, Llvk;

    const-string v7, "UPLOAD_IN_PROGRESS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Llvk;-><init>(Ljava/lang/String;I)V

    sput-object v5, Llvk;->d:Llvk;

    new-instance v7, Llvk;

    const-string v9, "UPLOAD_PAUSED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Llvk;-><init>(Ljava/lang/String;I)V

    sput-object v7, Llvk;->e:Llvk;

    new-instance v9, Llvk;

    const-string v11, "UPLOAD_FAILED_PERMANENTLY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Llvk;-><init>(Ljava/lang/String;I)V

    sput-object v9, Llvk;->f:Llvk;

    new-instance v11, Llvk;

    const-string v13, "UPLOADED_TO_F250"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Llvk;-><init>(Ljava/lang/String;I)V

    sput-object v11, Llvk;->g:Llvk;

    const/4 v13, 0x7

    new-array v13, v13, [Llvk;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Llvk;->h:[Llvk;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Llvk;
    .locals 1

    sget-object v0, Llvk;->h:[Llvk;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llvk;

    return-object v0
.end method
