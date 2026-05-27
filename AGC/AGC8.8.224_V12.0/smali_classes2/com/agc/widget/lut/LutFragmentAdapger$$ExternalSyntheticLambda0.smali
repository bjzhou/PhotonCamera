.class public final synthetic Lcom/agc/widget/lut/LutFragmentAdapger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/agc/widget/lut/LutFragmentAdapger$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/agc/widget/lut/LutFragmentAdapger$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/agc/widget/lut/LutItemAdapter;

    invoke-static {v0, p1, p2}, Lcom/agc/widget/lut/LutFragmentAdapger;->lambda$setSelectId$0(ILjava/lang/String;Lcom/agc/widget/lut/LutItemAdapter;)V

    return-void
.end method
