.class public final Lnqm;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnqm;

.field public static final b:Lnqm;

.field public static final c:Lnqm;

.field private static e:I


# instance fields
.field public final d:I

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnqm;

    invoke-direct {v0}, Lnqm;-><init>()V

    sput-object v0, Lnqm;->a:Lnqm;

    new-instance v0, Lnqm;

    const-string v1, "kOn"

    invoke-direct {v0, v1}, Lnqm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnqm;->b:Lnqm;

    new-instance v0, Lnqm;

    const-string v1, "kOff"

    invoke-direct {v0, v1}, Lnqm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnqm;->c:Lnqm;

    new-instance v0, Lnqm;

    const-string v1, "kInvalid"

    invoke-direct {v0, v1}, Lnqm;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput v0, Lnqm;->e:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "kAuto"

    iput-object v0, p0, Lnqm;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnqm;->d:I

    const/4 v0, 0x1

    sput v0, Lnqm;->e:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnqm;->f:Ljava/lang/String;

    sget p1, Lnqm;->e:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lnqm;->e:I

    iput p1, p0, Lnqm;->d:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnqm;->f:Ljava/lang/String;

    return-object v0
.end method
