.class public final synthetic Lfek;
.super Ljava/lang/Object;

# interfaces
.implements Laea;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lawy;Landroid/app/Activity;I)V
    .locals 0

    iput p3, p0, Lfek;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfek;->b:Ljava/lang/Object;

    iput-object p2, p0, Lfek;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkhr;Lfgf;I)V
    .locals 0

    iput p3, p0, Lfek;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfek;->b:Ljava/lang/Object;

    iput-object p2, p0, Lfek;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lfek;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfek;->b:Ljava/lang/Object;

    iget-object v1, p0, Lfek;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/res/Configuration;

    check-cast v0, Lawy;

    iget-object p1, v0, Lawy;->e:Laww;

    if-eqz p1, :cond_1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lawy;->a(Landroid/app/Activity;)Lawl;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Laww;->a(Landroid/app/Activity;Lawl;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lfek;->b:Ljava/lang/Object;

    iget-object v1, p0, Lfek;->a:Ljava/lang/Object;

    check-cast p1, Lkeb;

    check-cast v0, Lkhr;

    invoke-virtual {v0}, Lkhr;->b()Lkeg;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-wide v2, p1, Lkeg;->b:J

    invoke-interface {v1, v2, v3}, Lfgf;->f(J)V

    return-void

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
