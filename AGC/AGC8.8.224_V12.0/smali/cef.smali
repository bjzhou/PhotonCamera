.class public final Lcef;
.super Ljava/lang/Object;

# interfaces
.implements Lcex;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcef;->a:Loiw;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcef;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljgt;)Lcew;
    .locals 4

    new-instance v0, Lcee;

    iget-object v1, p0, Lcef;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lell;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcef;->b:Loiw;

    check-cast v2, Ldwh;

    invoke-virtual {v2}, Ldwh;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcee;-><init>(Lell;Landroid/content/Context;Ljgt;[B)V

    return-object v0
.end method
