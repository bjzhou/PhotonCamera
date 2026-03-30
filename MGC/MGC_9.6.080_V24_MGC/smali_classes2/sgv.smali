.class final Lsgv;
.super Lsgt;
.source "PG"


# direct methods
.method public constructor <init>(Lseg;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Lsgt;-><init>(Lseg;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lsgx;Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lsef;->f:Lsef;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p2, v0, p0}, Lsgx;->d(Ljava/lang/Object;Lsef;Lseg;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lsgt;->b:Lseg;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method
