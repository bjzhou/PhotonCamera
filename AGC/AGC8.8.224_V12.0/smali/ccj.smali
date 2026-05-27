.class public final Lccj;
.super Ljava/lang/Object;

# interfaces
.implements Lcby;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lccj;->a:Loiw;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lccj;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljvs;Lkli;)Lcbz;
    .locals 2

    new-instance p2, Lcci;

    iget-object v0, p0, Lccj;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljuh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lccj;->b:Loiw;

    check-cast v1, Ldwo;

    invoke-virtual {v1}, Ldwo;->a()Ldww;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcci;-><init>(Ljuh;Ldww;Ljvs;)V

    return-object p2
.end method
