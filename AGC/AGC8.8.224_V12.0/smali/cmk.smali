.class public final Lcmk;
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

    iput-object p1, p0, Lcmk;->a:Loiw;

    iput-object p2, p0, Lcmk;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lcmp;
    .locals 1

    iget-object v0, p0, Lcmk;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcmk;->b:Loiw;

    check-cast v0, Logo;

    invoke-virtual {v0}, Logo;->a()Ljava/util/Set;

    new-instance v0, Lcmi;

    invoke-direct {v0}, Lcmi;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcmk;->a()Lcmp;

    move-result-object v0

    return-object v0
.end method
