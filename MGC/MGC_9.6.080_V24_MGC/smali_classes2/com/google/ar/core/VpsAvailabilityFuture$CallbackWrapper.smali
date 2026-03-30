.class Lcom/google/ar/core/VpsAvailabilityFuture$CallbackWrapper;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcom/google/ar/core/VpsAvailabilityFuture$CallbackWrapper;->a:Ljava/util/function/Consumer;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method


# virtual methods
.method public accept(I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-static {p1}, Lcom/google/ar/core/VpsAvailability;->forNumber(I)Lcom/google/ar/core/VpsAvailability;

    move-result-object p1

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

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/ar/core/VpsAvailabilityFuture$CallbackWrapper;->a:Ljava/util/function/Consumer;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
