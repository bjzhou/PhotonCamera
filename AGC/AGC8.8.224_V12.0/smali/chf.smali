.class public final enum Lchf;
.super Ljava/lang/Enum;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final enum a:Lchf;

.field public static final enum b:Lchf;

.field public static final enum c:Lchf;

.field public static final enum d:Lchf;

.field public static final enum e:Lchf;

.field public static final enum f:Lchf;

.field private static final synthetic g:[Lchf;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lchf;

    const-string v1, "CAMERA_PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lchf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lchf;->a:Lchf;

    new-instance v1, Lchf;

    const-string v3, "PHOTO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lchf;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lchf;->b:Lchf;

    new-instance v3, Lchf;

    const-string v5, "VIDEO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lchf;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lchf;->c:Lchf;

    new-instance v5, Lchf;

    const-string v7, "SESSION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lchf;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lchf;->d:Lchf;

    new-instance v7, Lchf;

    const-string v9, "SECURE_ALBUM_PLACEHOLDER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lchf;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lchf;->e:Lchf;

    new-instance v9, Lchf;

    const-string v11, "BURST"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lchf;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lchf;->f:Lchf;

    const/4 v11, 0x6

    new-array v11, v11, [Lchf;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lchf;->g:[Lchf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lchf;
    .locals 1

    sget-object v0, Lchf;->g:[Lchf;

    invoke-virtual {v0}, [Lchf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lchf;

    return-object v0
.end method
