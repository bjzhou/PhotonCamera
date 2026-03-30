.class public interface abstract annotation Lsed;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final a:Lsdr;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {v0, v3, v1, v2, v2}, Lsdr;-><init>(Ljava/lang/String;Ljava/lang/Class;ZZ)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Lsed;->a:Lsdr;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    const-class v1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    const-string v3, "android_log_tag"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lsdr;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    const v1, 0x18

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

    :goto_e
    const/4 v2, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop
.end method
