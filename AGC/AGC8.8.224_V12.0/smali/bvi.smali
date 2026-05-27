.class public final Lbvi;
.super Ljava/lang/Object;

# interfaces
.implements Lbva;
.implements Lbvj;


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private final synthetic b:I

.field private final c:Lbkc;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lbkc;I[B)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p3, p0, Lbvi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbvi;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Lbvi;->c:Lbkc;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Lbqo;
    .locals 2

    iget v0, p0, Lbvi;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lbre;

    iget-object v1, p0, Lbvi;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, p1}, Lbre;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lbqk;

    iget-object v1, p0, Lbvi;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, p1}, Lbqk;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lbqw;

    iget-object v1, p0, Lbvi;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, p1}, Lbqw;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lbve;)Lbuz;
    .locals 2

    iget p1, p0, Lbvi;->b:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lbvk;

    iget-object v1, p0, Lbvi;->c:Lbkc;

    invoke-direct {p1, p0, v1, v0}, Lbvk;-><init>(Lbvj;Lbkc;[B)V

    return-object p1

    :pswitch_0
    new-instance p1, Lbvk;

    iget-object v1, p0, Lbvi;->c:Lbkc;

    invoke-direct {p1, p0, v1, v0}, Lbvk;-><init>(Lbvj;Lbkc;[B)V

    return-object p1

    :pswitch_1
    new-instance p1, Lbvk;

    iget-object v1, p0, Lbvi;->c:Lbkc;

    invoke-direct {p1, p0, v1, v0}, Lbvk;-><init>(Lbvj;Lbkc;[B)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
