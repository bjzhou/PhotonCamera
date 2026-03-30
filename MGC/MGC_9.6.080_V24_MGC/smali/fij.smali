.class public final Lfij;
.super Lfif;
.source "PG"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "Failed to find source encoder for data class: "

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Lfif;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method
