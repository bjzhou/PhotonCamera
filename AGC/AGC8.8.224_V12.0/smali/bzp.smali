.class public final Lbzp;
.super Lbzg;


# static fields
.field private static u:Lbzp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbzg;-><init>()V

    return-void
.end method

.method public static a()Lbzp;
    .locals 3

    sget-object v0, Lbzp;->u:Lbzp;

    if-nez v0, :cond_0

    new-instance v0, Lbzp;

    invoke-direct {v0}, Lbzp;-><init>()V

    sget-object v1, Lbwm;->b:Lbwm;

    new-instance v2, Lbwd;

    invoke-direct {v2}, Lbwd;-><init>()V

    invoke-virtual {v0, v1, v2}, Lbzg;->D(Lbwm;Lbqj;)Lbzg;

    move-result-object v0

    check-cast v0, Lbzp;

    invoke-virtual {v0}, Lbzg;->P()V

    sput-object v0, Lbzp;->u:Lbzp;

    :cond_0
    sget-object v0, Lbzp;->u:Lbzp;

    return-object v0
.end method

.method public static b(Ljava/lang/Class;)Lbzp;
    .locals 1

    new-instance v0, Lbzp;

    invoke-direct {v0}, Lbzp;-><init>()V

    invoke-virtual {v0, p0}, Lbzg;->n(Ljava/lang/Class;)Lbzg;

    move-result-object p0

    check-cast p0, Lbzp;

    return-object p0
.end method

.method public static c(Lbry;)Lbzp;
    .locals 1

    new-instance v0, Lbzp;

    invoke-direct {v0}, Lbzp;-><init>()V

    invoke-virtual {v0, p0}, Lbzg;->o(Lbry;)Lbzg;

    move-result-object p0

    check-cast p0, Lbzp;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lbzp;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lbzg;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
