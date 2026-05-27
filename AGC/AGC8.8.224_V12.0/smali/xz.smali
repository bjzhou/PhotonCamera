.class public final Lxz;
.super Lxt;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lxt;-><init>()V

    return-void
.end method

.method public static h()Lxz;
    .locals 1

    new-instance v0, Lxz;

    invoke-direct {v0}, Lxz;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final f(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lxt;->f(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
