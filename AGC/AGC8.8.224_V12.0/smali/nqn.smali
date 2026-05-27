.class public final Lnqn;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnqn;

.field public static final b:Lnqn;

.field public static final c:Lnqn;

.field public static final d:Lnqn;

.field public static final e:Lnqn;

.field public static final f:Lnqn;

.field public static final g:Lnqn;

.field public static final h:Lnqn;

.field public static final i:Lnqn;

.field private static k:I


# instance fields
.field public final j:I

.field private final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnqn;

    invoke-direct {v0}, Lnqn;-><init>()V

    sput-object v0, Lnqn;->a:Lnqn;

    new-instance v0, Lnqn;

    const-string v1, "kWarning"

    invoke-direct {v0, v1}, Lnqn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnqn;->b:Lnqn;

    new-instance v0, Lnqn;

    const-string v1, "kCritical"

    invoke-direct {v0, v1}, Lnqn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnqn;->c:Lnqn;

    new-instance v0, Lnqn;

    const-string v1, "kFatal"

    invoke-direct {v0, v1}, Lnqn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnqn;->d:Lnqn;

    new-instance v0, Lnqn;

    const-string v1, "kUnknown"

    invoke-direct {v0, v1}, Lnqn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnqn;->e:Lnqn;

    new-instance v0, Lnqn;

    const-string v1, "kCold"

    invoke-direct {v0, v1}, Lnqn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnqn;->f:Lnqn;

    new-instance v0, Lnqn;

    const-string v1, "kLight"

    invoke-direct {v0, v1}, Lnqn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnqn;->g:Lnqn;

    new-instance v0, Lnqn;

    const-string v1, "kModerate"

    invoke-direct {v0, v1}, Lnqn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnqn;->h:Lnqn;

    new-instance v0, Lnqn;

    const-string v1, "kShutdown"

    invoke-direct {v0, v1}, Lnqn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnqn;->i:Lnqn;

    const/4 v0, 0x0

    sput v0, Lnqn;->k:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "kNormal"

    iput-object v0, p0, Lnqn;->l:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnqn;->j:I

    const/4 v0, 0x1

    sput v0, Lnqn;->k:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnqn;->l:Ljava/lang/String;

    sget p1, Lnqn;->k:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lnqn;->k:I

    iput p1, p0, Lnqn;->j:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnqn;->l:Ljava/lang/String;

    return-object v0
.end method
