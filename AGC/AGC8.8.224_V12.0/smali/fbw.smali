.class public final Lfbw;
.super Ljava/lang/Object;

# interfaces
.implements Lelx;


# instance fields
.field final synthetic a:Lelx;

.field final synthetic n:Ljava/lang/Object;

.field private final synthetic o:I


# direct methods
.method public constructor <init>(Lelx;Lfbz;I)V
    .locals 0

    iput p3, p0, Lfbw;->o:I

    iput-object p1, p0, Lfbw;->a:Lelx;

    iput-object p2, p0, Lfbw;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;Lelx;I)V
    .locals 0

    iput p3, p0, Lfbw;->o:I

    iput-object p1, p0, Lfbw;->n:Ljava/lang/Object;

    iput-object p2, p0, Lfbw;->a:Lelx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Llpu;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lfbw;->o:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Llpu;->b:Ljava/lang/Object;

    iget-object v1, p0, Lfbw;->n:Ljava/lang/Object;

    iget-object v2, p1, Llpu;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lfbw;->a:Lelx;

    invoke-interface {v0, p1}, Lelx;->a(Llpu;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lfbw;->a:Lelx;

    invoke-interface {v2, p1}, Lelx;->a(Llpu;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    iget p1, p1, Llpu;->a:I

    const/16 v0, 0xf

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/4 v5, 0x1

    if-ge p1, v0, :cond_0

    aget p1, v1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    long-to-int v0, v3

    iget-object v1, p0, Lfbw;->n:Ljava/lang/Object;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-interface {v1, p1, v5, v0}, Lfbz;->ap(IZI)V

    return-object v2

    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lfbw;->n:Ljava/lang/Object;

    iget-object p1, p1, Llpu;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data
.end method
