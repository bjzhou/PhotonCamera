.class public final enum Lgfe;
.super Ljava/lang/Enum;

# interfaces
.implements Lgee;


# static fields
.field public static final enum a:Lgfe;

.field public static final enum b:Lgfe;

.field private static final synthetic f:[Lgfe;


# instance fields
.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v5, "RawPhoto"

    new-instance v6, Lgfe;

    const-string v1, "RAW_CAPTURE_ENABLED"

    const/4 v2, 0x0

    const v3, 0x7f08025a

    const v4, 0x7f14045b

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lgfe;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lgfe;->a:Lgfe;

    const-string v12, "BackPhotoFlash"

    new-instance v0, Lgfe;

    const-string v8, "FLASH_ON"

    const/4 v9, 0x1

    const v10, 0x7f080349

    const v11, 0x7f1401af

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lgfe;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lgfe;->b:Lgfe;

    const/4 v1, 0x2

    new-array v1, v1, [Lgfe;

    aput-object v6, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lgfe;->f:[Lgfe;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lgfe;->c:I

    iput p4, p0, Lgfe;->d:I

    iput-object p5, p0, Lgfe;->e:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lgfe;
    .locals 1

    sget-object v0, Lgfe;->f:[Lgfe;

    invoke-virtual {v0}, [Lgfe;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgfe;

    return-object v0
.end method
