.class final Lsbb;
.super Lrva;
.source "PG"


# instance fields
.field final a:Ljava/lang/Comparable;

.field final synthetic b:Lsbf;


# direct methods
.method public constructor <init>(Lsbf;Ljava/lang/Comparable;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p2}, Lrva;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput-object p1, p0, Lsbb;->b:Lsbf;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput-object p1, p0, Lsbb;->a:Ljava/lang/Comparable;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Lsbf;->Q()Ljava/lang/Comparable;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    :goto_2
    iget-object p0, p0, Lsbf;->a:Lrwl;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lsbb;->a:Ljava/lang/Comparable;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1, v0}, Lsbf;->R(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_8
    iget-object p0, p0, Lsbb;->b:Lsbf;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1}, Lrwl;->d(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method
