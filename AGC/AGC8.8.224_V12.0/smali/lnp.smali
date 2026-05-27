.class public final synthetic Llnp;
.super Ljava/lang/Object;

# interfaces
.implements Ljpk;


# instance fields
.field public final synthetic a:Llnq;


# direct methods
.method public synthetic constructor <init>(Llnq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llnp;->a:Llnq;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Llnp;->a:Llnq;

    iget-object v0, v0, Llnq;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
