.class public final enum Lhrc;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lhrc;

.field public static final enum b:Lhrc;

.field public static final enum c:Lhrc;

.field public static final enum d:Lhrc;

.field public static final enum e:Lhrc;

.field private static final synthetic g:[Lhrc;


# instance fields
.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lhrc;

    const-string v1, "TOUCH_TO_FOCUS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lhrc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lhrc;->a:Lhrc;

    new-instance v1, Lhrc;

    const-string v4, "TAXI"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lhrc;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lhrc;->b:Lhrc;

    new-instance v4, Lhrc;

    const-string v6, "QR_GLEAMING"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lhrc;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lhrc;->c:Lhrc;

    new-instance v6, Lhrc;

    const-string v8, "FACE_TRACKING"

    invoke-direct {v6, v8, v7, v7}, Lhrc;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lhrc;->d:Lhrc;

    new-instance v8, Lhrc;

    const-string v9, "NONE"

    const/4 v10, 0x4

    const v11, 0x7fffffff

    invoke-direct {v8, v9, v10, v11}, Lhrc;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lhrc;->e:Lhrc;

    const/4 v9, 0x5

    new-array v9, v9, [Lhrc;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v5

    aput-object v6, v9, v7

    aput-object v8, v9, v10

    sput-object v9, Lhrc;->g:[Lhrc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lhrc;->f:I

    return-void
.end method

.method public static values()[Lhrc;
    .locals 1

    sget-object v0, Lhrc;->g:[Lhrc;

    invoke-virtual {v0}, [Lhrc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhrc;

    return-object v0
.end method
