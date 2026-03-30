.class Lcom/Fd$0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Fd;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Fd;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$help:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/Fd;Landroid/app/AlertDialog;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p3, p0, Lcom/Fd$0;->val$help:Ljava/lang/Object;

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

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lcom/Fd$0;->val$dialog:Landroid/app/AlertDialog;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iput-object p1, p0, Lcom/Fd$0;->this$0:Lcom/Fd;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_0
    const/high16 v1, 0x10000000

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {v1 .. v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

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

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_4
    const-string v0, "cvp"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/32 :goto_0

    nop

    nop

    :goto_6
    const-string v2, "YW5kcm9pZC5pbnRlbnQuYWN0aW9uLlZJRVc"

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1b

    nop

    :goto_8
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto/32 :goto_15

    nop

    nop

    :goto_b
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "aHR0cHM6Ly93d3cuZ2NhbS1tb2RlLmNvbS9jYW1jb3JkZXI"

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    nop

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

    :goto_15
    iget-object v1, p0, Lcom/Fd$0;->val$help:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_16
    iget-object v1, p0, Lcom/Fd$0;->val$help:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lcom/Fd$0;->this$0:Lcom/Fd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_4

    nop

    nop

    :goto_1a
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1d
    check-cast v1, Ljava/lang/CharSequence;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_20
    invoke-direct {v2, p0}, Lcom/Fd$1;-><init>(Lcom/Fd$0;)V

    goto/32 :goto_2

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Lcom/Fd;->getKey()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_22
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_23
    invoke-static {v1}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_24
    const v0, 0x5

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_27
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_29
    new-instance v0, Landroid/content/Intent;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2a
    invoke-static {v2}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2b
    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v0, "goto_web"

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2d
    iget-object v1, p0, Lcom/Fd$0;->val$dialog:Landroid/app/AlertDialog;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2e
    new-instance v2, Lcom/Fd$1;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2f
    const-string v1, "OK"

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_30
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_32
    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop
.end method
