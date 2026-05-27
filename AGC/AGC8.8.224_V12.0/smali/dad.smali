.class public final synthetic Ldad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ldaf;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ldaf;ZZI)V
    .locals 0

    iput p4, p0, Ldad;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldad;->a:Ldaf;

    iput-boolean p2, p0, Ldad;->b:Z

    iput-boolean p3, p0, Ldad;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Ldad;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldad;->a:Ldaf;

    iget-boolean v1, p0, Ldad;->b:Z

    iget-boolean v2, p0, Ldad;->c:Z

    if-eqz v2, :cond_3

    if-nez v1, :cond_3

    iget-object v3, v0, Ldaf;->l:Ljew;

    const-string v4, "pref_ext_mic_bluetooth_chip_display_count"

    invoke-virtual {v3, v4}, Ljew;->Z(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_2

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Ldad;->a:Ldaf;

    iget-boolean v1, p0, Ldad;->b:Z

    iget-boolean v2, p0, Ldad;->c:Z

    invoke-virtual {v0}, Ldaf;->o()V

    invoke-static {}, Ljuh;->a()V

    if-eqz v1, :cond_0

    iget-object v1, v0, Ldaf;->j:Licf;

    iget-object v2, v0, Ldaf;->e:Landroid/app/Activity;

    const v3, 0x7f14018f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Licf;->s(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    iget-object v1, v0, Ldaf;->j:Licf;

    iget-object v2, v0, Ldaf;->e:Landroid/app/Activity;

    const v3, 0x7f14018c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Licf;->s(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v1, v0, Ldaf;->c:Lell;

    iget-object v0, v0, Ldaf;->j:Licf;

    invoke-interface {v1, v0}, Lell;->d(Lelk;)Lkad;

    return-void

    :cond_2
    return-void

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ldaf;->o()V

    invoke-static {}, Ljuh;->a()V

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    iget-object v1, v0, Ldaf;->i:Licf;

    iget-object v2, v0, Ldaf;->e:Landroid/app/Activity;

    const v3, 0x7f14018d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Licf;->s(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    iget-object v1, v0, Ldaf;->i:Licf;

    iget-object v2, v0, Ldaf;->e:Landroid/app/Activity;

    const v3, 0x7f14018e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Licf;->s(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    iget-object v1, v0, Ldaf;->i:Licf;

    iget-object v2, v0, Ldaf;->e:Landroid/app/Activity;

    const v3, 0x7f14018b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Licf;->s(Ljava/lang/String;)V

    :cond_6
    :goto_2
    iget-object v1, v0, Ldaf;->c:Lell;

    iget-object v0, v0, Ldaf;->i:Licf;

    invoke-interface {v1, v0}, Lell;->d(Lelk;)Lkad;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
