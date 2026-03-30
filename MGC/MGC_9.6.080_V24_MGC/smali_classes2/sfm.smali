.class public abstract Lsfm;
.super Lsel;
.source "PG"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p1, p0, Lsfm;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lsel;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lsfm;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public b(Ljava/lang/RuntimeException;Lsej;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const-string p0, "AbstractAndroidBackend"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    const-string p2, "Internal logging error"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
