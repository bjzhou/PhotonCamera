.class public abstract Lokh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    const v0, 0xe

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    goto :goto_d

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/32 :goto_6

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    :try_start_0
    invoke-virtual {p0}, Lokh;->a()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_7

    nop

    :catch_0
    move-exception p0

    nop

    nop

    :try_start_1
    const-string p2, "Failed to start resolution intent."

    nop

    const-string v0, "Failed to start resolution intent. This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store."

    nop

    nop

    nop

    nop

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    nop

    nop

    nop

    nop

    const-string v2, "generic"

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    if-ne v2, v1, :cond_1

    nop

    nop

    nop

    move-object p2, v0

    nop

    nop

    nop

    nop

    :cond_1
    const-string v0, "DialogRedirect"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    :goto_10
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method
