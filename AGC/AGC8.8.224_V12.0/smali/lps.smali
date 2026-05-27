.class public final synthetic Llps;
.super Ljava/lang/Object;

# interfaces
.implements Lmqi;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Llps;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llps;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llnq;I)V
    .locals 0

    iput p2, p0, Llps;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llps;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Llps;->b:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Llps;->a:Ljava/lang/Object;

    check-cast p1, Llpk;

    sget-object v2, Llpt;->a:Llpa;

    sget-object v2, Llpk;->b:Llpk;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    iget-object p1, p1, Llpk;->a:Lnxt;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Llps;->a:Ljava/lang/Object;

    check-cast p1, Llpk;

    sget-object v1, Llpt;->a:Llpa;

    sget-object v1, Llpi;->d:Llpi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Llpk;->a:Lnxt;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Llpi;

    :cond_0
    iget-object p1, v1, Llpi;->c:Ljava/lang/String;

    return-object p1

    :pswitch_1
    iget-object v0, p0, Llps;->a:Ljava/lang/Object;

    check-cast p1, Lnaa;

    iget-object p1, p1, Lnaa;->a:Ljava/lang/Object;

    check-cast p1, Ljpp;

    iget-object v2, p1, Ljpp;->a:Ljpm;

    invoke-static {v2}, Ljhp;->ab(Ljava/lang/Object;)V

    iget-object p1, p1, Ljpp;->a:Ljpm;

    iget p1, p1, Ljpm;->a:I

    if-eq p1, v1, :cond_2

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    :goto_0
    check-cast v0, Llnq;

    iget-object p1, v0, Llnq;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object v0

    :pswitch_2
    iget-object v0, p0, Llps;->a:Ljava/lang/Object;

    check-cast p1, Llpk;

    sget-object v1, Llpt;->a:Llpa;

    sget-object v1, Llpi;->d:Llpi;

    iget-object p1, p1, Llpk;->a:Lnxt;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Llpi;

    :cond_3
    iget-object p1, v1, Llpi;->b:Lnxa;

    return-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llpi;

    sget-object v5, Llpi;->d:Llpi;

    invoke-virtual {v5}, Lnws;->O()Lnwn;

    move-result-object v5

    iget-object v6, v4, Llpi;->c:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, v4, Llpi;->c:Ljava/lang/String;

    iget-object v7, v5, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_4
    iget-object v7, v5, Lnwn;->b:Lnws;

    check-cast v7, Llpi;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, v7, Llpi;->a:I

    or-int/2addr v8, v1

    iput v8, v7, Llpi;->a:I

    iput-object v6, v7, Llpi;->c:Ljava/lang/String;

    :cond_5
    iget-object v4, v4, Llpi;->b:Lnxa;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v5, v6}, Lnwn;->v(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5}, Lnwn;->i()Lnws;

    move-result-object v4

    check-cast v4, Llpi;

    invoke-virtual {v2, v3, v4}, Lnwn;->w(Ljava/lang/String;Llpi;)V

    goto :goto_1

    :cond_8
    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Llpk;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
