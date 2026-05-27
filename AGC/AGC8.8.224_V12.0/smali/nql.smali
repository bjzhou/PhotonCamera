.class public final Lnql;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnql;

.field public static final b:Lnql;

.field private static d:I


# instance fields
.field public final c:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnql;

    const-string v1, "kOff"

    invoke-direct {v0, v1}, Lnql;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnql;->a:Lnql;

    new-instance v0, Lnql;

    const-string v1, "kOn"

    invoke-direct {v0, v1}, Lnql;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnql;->b:Lnql;

    new-instance v0, Lnql;

    const-string v1, "kUnknown"

    invoke-direct {v0, v1}, Lnql;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput v0, Lnql;->d:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnql;->e:Ljava/lang/String;

    sget p1, Lnql;->d:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lnql;->d:I

    iput p1, p0, Lnql;->c:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnql;->e:Ljava/lang/String;

    return-object v0
.end method
