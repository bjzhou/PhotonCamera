.class public final enum Lgqi;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lgqi;

.field public static final enum b:Lgqi;

.field public static final enum c:Lgqi;

.field public static final enum d:Lgqi;

.field public static final enum e:Lgqi;

.field private static final synthetic f:[Lgqi;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lgqi;

    const-string v1, "CREATE_EARLY_FILMSTRIP_PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgqi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgqi;->a:Lgqi;

    new-instance v1, Lgqi;

    const-string v3, "COMPRESS_TO_JPEG_AND_WRITE_TO_DISK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lgqi;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lgqi;->b:Lgqi;

    new-instance v3, Lgqi;

    const-string v5, "CONVERT_TO_RGB_PREVIEW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lgqi;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lgqi;->c:Lgqi;

    new-instance v5, Lgqi;

    const-string v7, "BLOCK_UNTIL_ALL_TASKS_RELEASE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lgqi;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lgqi;->d:Lgqi;

    new-instance v7, Lgqi;

    const-string v9, "CLOSE_ON_ALL_TASKS_RELEASE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lgqi;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lgqi;->e:Lgqi;

    const/4 v9, 0x5

    new-array v9, v9, [Lgqi;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lgqi;->f:[Lgqi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lgqi;
    .locals 1

    sget-object v0, Lgqi;->f:[Lgqi;

    invoke-virtual {v0}, [Lgqi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgqi;

    return-object v0
.end method
