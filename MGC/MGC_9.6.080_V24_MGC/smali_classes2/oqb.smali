.class final Loqb;
.super Lolx;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0, v0}, Lolx;-><init>([B[B)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Landroid/os/Looper;Lokb;Ljava/lang/Object;Lohf;Lohg;)Logz;
    .locals 7

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1
    const v0, 0x16

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_28

    nop

    :goto_3
    invoke-virtual {v4, p4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v4, p4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object v6, p6

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    :goto_8
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    :goto_9
    new-instance v4, Landroid/os/Bundle;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    const-string p4, "com.google.android.gms.signin.internal.offlineAccessRequested"

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string p4, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p4, Loqd;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p4, p3, Lokb;->f:Loqd;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v4, p4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/32 :goto_1c

    nop

    nop

    :goto_10
    const/4 v2, 0x1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v4, v0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string p4, "com.google.android.gms.signin.internal.serverClientId"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    const-string p4, "com.google.android.gms.signin.internal.idTokenRequested"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_17
    const-string p4, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_18
    move-object v3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v4, p4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    :goto_1a
    const-string v0, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1b
    move-object v0, p0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string p4, "com.google.android.gms.signin.internal.hostedDomain"

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move-object v1, p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1e
    iget-object v1, p3, Lokb;->a:Landroid/accounts/Account;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p4, p3, Lokb;->g:Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v4, p4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_25
    const-string p4, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_26
    invoke-virtual {v4, p4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_29
    new-instance p0, Loqi;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2a
    const-string v0, "com.google.android.gms.signin.internal.clientRequestedAccount"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct/range {v0 .. v6}, Loqi;-><init>(Landroid/content/Context;Landroid/os/Looper;Lokb;Landroid/os/Bundle;Lohf;Lohg;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move-object v5, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2e
    if-nez p4, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v4, p4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_30
    const-string p4, "com.google.android.gms.signin.internal.logSessionId"

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v4, p4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_30

    nop

    nop

    nop
.end method
