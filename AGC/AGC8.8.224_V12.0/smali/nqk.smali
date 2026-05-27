.class public final Lnqk;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnqk;

.field public static final b:Lnqk;

.field public static final c:Lnqk;

.field public static final d:Lnqk;

.field public static final e:[Lnqk;

.field private static g:I


# instance fields
.field public final f:I

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lnqk;

    invoke-direct {v0}, Lnqk;-><init>()V

    sput-object v0, Lnqk;->a:Lnqk;

    new-instance v1, Lnqk;

    const-string v2, "kCpu"

    invoke-direct {v1, v2}, Lnqk;-><init>(Ljava/lang/String;)V

    sput-object v1, Lnqk;->b:Lnqk;

    new-instance v2, Lnqk;

    const-string v3, "kHexagon"

    invoke-direct {v2, v3}, Lnqk;-><init>(Ljava/lang/String;)V

    sput-object v2, Lnqk;->c:Lnqk;

    new-instance v3, Lnqk;

    const-string v4, "kGxp"

    invoke-direct {v3, v4}, Lnqk;-><init>(Ljava/lang/String;)V

    sput-object v3, Lnqk;->d:Lnqk;

    const/4 v4, 0x4

    new-array v4, v4, [Lnqk;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    sput-object v4, Lnqk;->e:[Lnqk;

    sput v5, Lnqk;->g:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "kInvalid"

    iput-object v0, p0, Lnqk;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnqk;->f:I

    const/4 v0, 0x1

    sput v0, Lnqk;->g:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnqk;->h:Ljava/lang/String;

    sget p1, Lnqk;->g:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lnqk;->g:I

    iput p1, p0, Lnqk;->f:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnqk;->h:Ljava/lang/String;

    return-object v0
.end method
