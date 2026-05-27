.class public final Lnqi;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnqi;

.field public static final b:Lnqi;

.field public static final c:Lnqi;

.field private static e:I


# instance fields
.field public final d:I

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnqi;

    const-string v1, "kSegmentation"

    invoke-direct {v0, v1}, Lnqi;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnqi;->a:Lnqi;

    new-instance v0, Lnqi;

    const-string v1, "kPdTraditional"

    invoke-direct {v0, v1}, Lnqi;-><init>(Ljava/lang/String;)V

    new-instance v0, Lnqi;

    const-string v1, "kPdLearned"

    invoke-direct {v0, v1}, Lnqi;-><init>(Ljava/lang/String;)V

    new-instance v0, Lnqi;

    const-string v1, "kPdStereo"

    invoke-direct {v0, v1}, Lnqi;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnqi;->b:Lnqi;

    new-instance v0, Lnqi;

    const-string v1, "kMonocular"

    invoke-direct {v0, v1}, Lnqi;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnqi;->c:Lnqi;

    const/4 v0, 0x0

    sput v0, Lnqi;->e:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnqi;->f:Ljava/lang/String;

    sget p1, Lnqi;->e:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lnqi;->e:I

    iput p1, p0, Lnqi;->d:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnqi;->f:Ljava/lang/String;

    return-object v0
.end method
