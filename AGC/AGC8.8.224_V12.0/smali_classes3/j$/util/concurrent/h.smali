.class final Lj$/util/concurrent/h;
.super Lj$/util/concurrent/a;

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Enumeration;


# instance fields
.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>([Lj$/util/concurrent/k;IILj$/util/concurrent/ConcurrentHashMap;I)V
    .locals 0

    iput p5, p0, Lj$/util/concurrent/h;->k:I

    invoke-direct {p0, p1, p2, p3, p4}, Lj$/util/concurrent/a;-><init>([Lj$/util/concurrent/k;IILj$/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lj$/util/concurrent/h;->k:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lj$/util/concurrent/p;->b:Lj$/util/concurrent/k;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lj$/util/concurrent/a;->j:Lj$/util/concurrent/k;

    invoke-virtual {p0}, Lj$/util/concurrent/p;->a()Lj$/util/concurrent/k;

    iget-object v0, v0, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :goto_0
    iget-object v0, p0, Lj$/util/concurrent/p;->b:Lj$/util/concurrent/k;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    iput-object v0, p0, Lj$/util/concurrent/a;->j:Lj$/util/concurrent/k;

    invoke-virtual {p0}, Lj$/util/concurrent/p;->a()Lj$/util/concurrent/k;

    return-object v1

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final nextElement()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lj$/util/concurrent/h;->k:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lj$/util/concurrent/h;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :goto_0
    invoke-virtual {p0}, Lj$/util/concurrent/h;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
