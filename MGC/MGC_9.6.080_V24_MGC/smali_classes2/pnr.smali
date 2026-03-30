.class public final Lpnr;
.super Lpru;
.source "PG"


# direct methods
.method public constructor <init>(Lpsb;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

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
    invoke-direct {p0, p1}, Lpru;-><init>(Lpsb;)V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final f()Lprw;
    .locals 0

    :try_start_0
    invoke-super {p0}, Lpru;->f()Lprw;

    move-result-object p0

    nop
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

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
.end method

.method public final g()Lprw;
    .locals 0

    :try_start_0
    invoke-super {p0}, Lpru;->g()Lprw;

    move-result-object p0

    nop
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    const/4 p0, 0x0

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

    nop

    nop
.end method
