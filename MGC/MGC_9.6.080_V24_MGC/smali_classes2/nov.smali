.class public final synthetic Lnov;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic a:Lryy;


# direct methods
.method public synthetic constructor <init>(Lryy;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p1, p0, Lnov;->a:Lryy;

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
    return-void

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    :goto_9
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    goto :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    throw p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    :goto_f
    iget-object p0, p0, Lnov;->a:Lryy;

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Lryy;->em()Lscp;

    move-result-object p0

    nop

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    const-string v3, "@"

    nop

    nop

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    nop

    if-ltz v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";->"

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    const-string v1, "INVOKE_TRACKING"

    nop

    nop

    nop

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_a

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method
