.class final Lrzc;
.super Lryg;
.source "PG"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lrzd;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p1, p0, Lrzc;->a:Ljava/util/Comparator;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Lrzd;->comparator()Ljava/util/Comparator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Lryg;-><init>(Lryh;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(I)Lryd;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrzc;->a:Ljava/util/Comparator;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1, p0}, Lrzb;-><init>(Ljava/util/Comparator;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    new-instance p1, Lrzb;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-object p1

    nop
.end method
