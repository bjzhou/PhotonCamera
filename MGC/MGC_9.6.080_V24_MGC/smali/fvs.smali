.class public final Lfvs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfvf;


# instance fields
.field private final a:Ltxm;

.field private final b:Ltxm;


# direct methods
.method public constructor <init>(Ltxm;Ltxm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

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

    nop

    :goto_2
    iput-object p1, p0, Lfvs;->a:Ltxm;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lfvs;->b:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Loyd;Lpnu;)Lfvg;
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    check-cast v0, Lowu;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    return-object p2

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Liaq;->b()Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lfvs;->b:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lfvs;->a:Ltxm;

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

    :goto_7
    new-instance p2, Lfvr;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p0, Liaq;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    invoke-direct {p2, v0, p0, p1}, Lfvr;-><init>(Lowu;Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;Loyd;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
