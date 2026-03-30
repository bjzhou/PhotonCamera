.class final Lj$/util/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lj$/util/w;


# instance fields
.field public final synthetic a:I

.field private final b:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lj$/util/l;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj$/util/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lj$/util/l;->a:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lj$/util/k;->b:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lj$/util/r;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj$/util/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lj$/util/l;->a:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lj$/util/k;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1

    iget v0, p0, Lj$/util/k;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lj$/util/o;

    invoke-direct {v0, p1}, Lj$/util/o;-><init>(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lj$/util/k;->b:Ljava/util/Iterator;

    invoke-static {p1, v0}, Lj$/util/b;->j(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lj$/util/k;->b:Ljava/util/Iterator;

    invoke-static {v0, p1}, Lj$/util/b;->j(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lj$/util/k;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lj$/util/k;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lj$/util/k;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lj$/util/k;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lj$/util/p;

    iget-object v1, p0, Lj$/util/k;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-direct {v0, v1}, Lj$/util/p;-><init>(Ljava/util/Map$Entry;)V

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lj$/util/k;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    iget v0, p0, Lj$/util/k;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
