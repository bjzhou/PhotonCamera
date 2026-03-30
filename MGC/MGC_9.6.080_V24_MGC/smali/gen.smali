.class public final synthetic Lgen;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Libo;


# instance fields
.field public final synthetic a:Loyn;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Loyn;F)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgen;->a:Loyn;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lgen;->b:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final dz(Llsc;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iget v0, p0, Lgen;->b:F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    iget-object p0, p0, Lgen;->a:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, v0}, Lcom/google/android/apps/camera/moments/api/GroupPhotoUtils;->b(Llsc;F)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method
