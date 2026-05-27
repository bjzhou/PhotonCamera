.class public final Lnqw;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnqw;

.field private static c:I


# instance fields
.field public final b:I

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnqw;

    invoke-direct {v0}, Lnqw;-><init>()V

    sput-object v0, Lnqw;->a:Lnqw;

    new-instance v0, Lnqw;

    const-string v1, "kSabre"

    invoke-direct {v0, v1}, Lnqw;-><init>(Ljava/lang/String;)V

    new-instance v0, Lnqw;

    const-string v1, "kSpatialBayer"

    invoke-direct {v0, v1}, Lnqw;-><init>(Ljava/lang/String;)V

    new-instance v0, Lnqw;

    const-string v1, "kSpatialRgb"

    invoke-direct {v0, v1}, Lnqw;-><init>(Ljava/lang/String;)V

    new-instance v0, Lnqw;

    const-string v1, "kInvalid"

    invoke-direct {v0, v1}, Lnqw;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput v0, Lnqw;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "kWienerFilter"

    iput-object v0, p0, Lnqw;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnqw;->b:I

    const/4 v0, 0x1

    sput v0, Lnqw;->c:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnqw;->d:Ljava/lang/String;

    sget p1, Lnqw;->c:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lnqw;->c:I

    iput p1, p0, Lnqw;->b:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnqw;->d:Ljava/lang/String;

    return-object v0
.end method
