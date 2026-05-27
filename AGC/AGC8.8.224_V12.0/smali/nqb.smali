.class public final Lnqb;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnqb;

.field public static final b:Lnqb;

.field private static d:I


# instance fields
.field public final c:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnqb;

    invoke-direct {v0}, Lnqb;-><init>()V

    sput-object v0, Lnqb;->a:Lnqb;

    new-instance v0, Lnqb;

    const-string v1, "kHdrLong"

    invoke-direct {v0, v1}, Lnqb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnqb;->b:Lnqb;

    new-instance v0, Lnqb;

    const-string v1, "kAeTypeCount"

    invoke-direct {v0, v1}, Lnqb;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput v0, Lnqb;->d:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "kHdrShort"

    iput-object v0, p0, Lnqb;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnqb;->c:I

    const/4 v0, 0x1

    sput v0, Lnqb;->d:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnqb;->e:Ljava/lang/String;

    sget p1, Lnqb;->d:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lnqb;->d:I

    iput p1, p0, Lnqb;->c:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnqb;->e:Ljava/lang/String;

    return-object v0
.end method
