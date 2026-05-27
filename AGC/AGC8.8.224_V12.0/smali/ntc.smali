.class public final enum Lntc;
.super Ljava/lang/Enum;

# interfaces
.implements Lnwv;


# static fields
.field public static final enum a:Lntc;

.field public static final enum b:Lntc;

.field public static final enum c:Lntc;

.field public static final enum d:Lntc;

.field public static final enum e:Lntc;

.field private static final synthetic g:[Lntc;


# instance fields
.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lntc;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lntc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lntc;->a:Lntc;

    new-instance v1, Lntc;

    const-string v3, "CAMERA_MOVED_TOO_FAST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lntc;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lntc;->b:Lntc;

    new-instance v3, Lntc;

    const-string v5, "SCENE_MOVED_TOO_FAST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lntc;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lntc;->c:Lntc;

    new-instance v5, Lntc;

    const-string v7, "TOO_EARLY_FOR_HDR_PLUS_RESULT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lntc;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lntc;->d:Lntc;

    new-instance v7, Lntc;

    const-string v9, "NOT_ENOUGH_MOTION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lntc;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lntc;->e:Lntc;

    const/4 v9, 0x5

    new-array v9, v9, [Lntc;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lntc;->g:[Lntc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lntc;->f:I

    return-void
.end method

.method public static values()[Lntc;
    .locals 1

    sget-object v0, Lntc;->g:[Lntc;

    invoke-virtual {v0}, [Lntc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lntc;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lntc;->f:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lntc;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
