.class public final Leck;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leck;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;)Leck;
    .locals 1

    new-instance v0, Leck;

    invoke-direct {v0, p0}, Leck;-><init>(Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lnqx;
    .locals 2

    iget-object v0, p0, Leck;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldhq;->y:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnqx;->b:Lnqx;

    goto :goto_0

    :cond_0
    sget-object v0, Lnqx;->a:Lnqx;

    :goto_0
    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Leck;->b()Lnqx;

    move-result-object v0

    return-object v0
.end method
