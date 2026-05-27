.class public final Lcfm;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcfm;->a:Loiw;

    iput-object p2, p0, Lcfm;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/wear/ambient/AmbientDelegate;
    .locals 4

    iget-object v0, p0, Lcfm;->a:Loiw;

    check-cast v0, Lcfn;

    invoke-virtual {v0}, Lcfn;->a()Lbkc;

    move-result-object v0

    iget-object v1, p0, Lcfm;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    new-instance v2, Landroidx/wear/ambient/AmbientDelegate;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Lbkc;Ldhi;[B)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcfm;->a()Landroidx/wear/ambient/AmbientDelegate;

    move-result-object v0

    return-object v0
.end method
