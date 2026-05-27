.class public final Lcct;
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

    iput-object p1, p0, Lcct;->a:Loiw;

    iput-object p2, p0, Lcct;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/wear/ambient/AmbientDelegate;
    .locals 3

    iget-object v0, p0, Lcct;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldol;

    iget-object v1, p0, Lcct;->b:Loiw;

    new-instance v2, Landroidx/wear/ambient/AmbientDelegate;

    invoke-direct {v2, v0, v1}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Ldol;Loiw;)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcct;->a()Landroidx/wear/ambient/AmbientDelegate;

    move-result-object v0

    return-object v0
.end method
