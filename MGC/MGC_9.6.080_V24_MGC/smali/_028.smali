.class public final synthetic L_028;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, L_028;->a:Ljava/lang/String;

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static FoXAcxtrEHLJsgVE(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static QrLtuFBcKjRgfcqU(Landroid/app/Application;)Landroid/content/Context;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static sMhsHZCRJaPphkNY()Landroid/app/Application;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static yuCmDbCRjJJIvqRI(Landroid/widget/Toast;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 3

    goto/32 :goto_f

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_3
    invoke-static {v0, v1, v2}, L_028;->FoXAcxtrEHLJsgVE(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0}, L_028;->yuCmDbCRjJJIvqRI(Landroid/widget/Toast;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, L_028;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    invoke-static {}, L_028;->sMhsHZCRJaPphkNY()Landroid/app/Application;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    invoke-static/range {v0 .. v0}, L_028;->QrLtuFBcKjRgfcqU(Landroid/app/Application;)Landroid/content/Context;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method
