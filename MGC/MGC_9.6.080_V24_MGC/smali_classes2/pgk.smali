.class public final Lpgk;
.super Lpuq;
.source "PG"


# instance fields
.field final synthetic a:Lpcm;

.field private final b:Lpcm;


# direct methods
.method public constructor <init>(Lpcm;Lpcm;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p2, p2, p2}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput-object p2, p0, Lpgk;->a:Lpcm;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lpgk;->b:Lpcm;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpro;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpgk;->a:Lpcm;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Lpcm;->a(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public final cR(Lprk;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Lpcm;->a(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lpgk;->a:Lpcm;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

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
    return p0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpgk;->b:Lpcm;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lpgk;->b:Lpcm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop
.end method
