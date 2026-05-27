.class public final enum Llul;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Llul;

.field public static final enum b:Llul;

.field public static final enum c:Llul;

.field public static final enum d:Llul;

.field public static final enum e:Llul;

.field public static final enum f:Llul;

.field public static final enum g:Llul;

.field private static final synthetic h:[Llul;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Llul;

    const-string v1, "UNKNOWN_AIRLOCK_FILE_STATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Llul;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llul;->a:Llul;

    new-instance v1, Llul;

    const-string v3, "ENTERING_AIRLOCK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Llul;-><init>(Ljava/lang/String;I)V

    sput-object v1, Llul;->b:Llul;

    new-instance v3, Llul;

    const-string v5, "IN_AIRLOCK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Llul;-><init>(Ljava/lang/String;I)V

    sput-object v3, Llul;->c:Llul;

    new-instance v5, Llul;

    const-string v7, "FAILED_TO_ENTER_AIRLOCK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Llul;-><init>(Ljava/lang/String;I)V

    sput-object v5, Llul;->d:Llul;

    new-instance v7, Llul;

    const-string v9, "FILES_DELETION_IN_PROGRESS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Llul;-><init>(Ljava/lang/String;I)V

    sput-object v7, Llul;->e:Llul;

    new-instance v9, Llul;

    const-string v11, "FILES_DELETED_FROM_AIRLOCK"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Llul;-><init>(Ljava/lang/String;I)V

    sput-object v9, Llul;->f:Llul;

    new-instance v11, Llul;

    const-string v13, "FAILED_TO_DELETE_FROM_AIRLOCK"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Llul;-><init>(Ljava/lang/String;I)V

    sput-object v11, Llul;->g:Llul;

    const/4 v13, 0x7

    new-array v13, v13, [Llul;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Llul;->h:[Llul;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Llul;
    .locals 1

    sget-object v0, Llul;->h:[Llul;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llul;

    return-object v0
.end method
