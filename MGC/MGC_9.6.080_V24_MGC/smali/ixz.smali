.class public final Lixz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;


# direct methods
.method public constructor <init>(Ltxm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

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
    iput-object p1, p0, Lixz;->a:Ltxm;

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
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lixz;->b()Landroid/app/KeyguardManager;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final b()Landroid/app/KeyguardManager;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lixz;->a:Ltxm;

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

    nop

    :goto_2
    invoke-interface {p0, v0}, Lixr;->a(Lqxk;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    check-cast p0, Landroid/app/KeyguardManager;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p0, Lixr;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    :goto_7
    sget-object v0, Lixr;->g:Lqxk;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method
