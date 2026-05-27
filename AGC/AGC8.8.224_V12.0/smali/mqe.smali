.class final Lmqe;
.super Lmqd;


# static fields
.field static final a:Lmqe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmqe;

    invoke-direct {v0}, Lmqe;-><init>()V

    sput-object v0, Lmqe;->a:Lmqe;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmqd;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
