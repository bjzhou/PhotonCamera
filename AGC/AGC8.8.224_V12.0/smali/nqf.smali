.class public final Lnqf;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnqf;

.field public static final b:Lnqf;

.field public static final c:Lnqf;

.field public static final d:Lnqf;

.field public static final e:Lnqf;

.field private static g:I


# instance fields
.field public final f:I

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnqf;

    invoke-direct {v0}, Lnqf;-><init>()V

    sput-object v0, Lnqf;->a:Lnqf;

    new-instance v0, Lnqf;

    const-string v1, "kRGGB"

    invoke-direct {v0, v1}, Lnqf;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnqf;->b:Lnqf;

    new-instance v0, Lnqf;

    const-string v1, "kBGGR"

    invoke-direct {v0, v1}, Lnqf;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnqf;->c:Lnqf;

    new-instance v0, Lnqf;

    const-string v1, "kGRBG"

    invoke-direct {v0, v1}, Lnqf;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnqf;->d:Lnqf;

    new-instance v0, Lnqf;

    const-string v1, "kGBRG"

    invoke-direct {v0, v1}, Lnqf;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnqf;->e:Lnqf;

    new-instance v0, Lnqf;

    const-string v1, "kQuadRGGB"

    invoke-direct {v0, v1}, Lnqf;-><init>(Ljava/lang/String;)V

    new-instance v0, Lnqf;

    const-string v1, "kQuadBGGR"

    invoke-direct {v0, v1}, Lnqf;-><init>(Ljava/lang/String;)V

    new-instance v0, Lnqf;

    const-string v1, "kQuadGRBG"

    invoke-direct {v0, v1}, Lnqf;-><init>(Ljava/lang/String;)V

    new-instance v0, Lnqf;

    const-string v1, "kQuadGBRG"

    invoke-direct {v0, v1}, Lnqf;-><init>(Ljava/lang/String;)V

    new-instance v0, Lnqf;

    const-string v1, "kNone"

    invoke-direct {v0, v1}, Lnqf;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput v0, Lnqf;->g:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "kInvalid"

    iput-object v0, p0, Lnqf;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnqf;->f:I

    const/4 v0, 0x1

    sput v0, Lnqf;->g:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnqf;->h:Ljava/lang/String;

    sget p1, Lnqf;->g:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lnqf;->g:I

    iput p1, p0, Lnqf;->f:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnqf;->h:Ljava/lang/String;

    return-object v0
.end method
