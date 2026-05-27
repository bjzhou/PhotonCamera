.class public final Lnre;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnre;

.field public static final b:Lnre;

.field public static final c:Lnre;

.field private static e:I


# instance fields
.field public final d:I

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnre;

    invoke-direct {v0}, Lnre;-><init>()V

    sput-object v0, Lnre;->a:Lnre;

    new-instance v0, Lnre;

    const-string v1, "kLanczos"

    invoke-direct {v0, v1}, Lnre;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnre;->b:Lnre;

    new-instance v0, Lnre;

    const-string v1, "kRaisr"

    invoke-direct {v0, v1}, Lnre;-><init>(Ljava/lang/String;)V

    new-instance v0, Lnre;

    const-string v1, "kLancet"

    invoke-direct {v0, v1}, Lnre;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnre;->c:Lnre;

    new-instance v0, Lnre;

    const-string v1, "kInvalid"

    invoke-direct {v0, v1}, Lnre;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput v0, Lnre;->e:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "kNone"

    iput-object v0, p0, Lnre;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnre;->d:I

    const/4 v0, 0x1

    sput v0, Lnre;->e:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnre;->f:Ljava/lang/String;

    sget p1, Lnre;->e:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lnre;->e:I

    iput p1, p0, Lnre;->d:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnre;->f:Ljava/lang/String;

    return-object v0
.end method
