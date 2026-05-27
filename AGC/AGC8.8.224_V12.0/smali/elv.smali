.class public final Lelv;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgxb;I[B[B[B)V
    .locals 0

    iput p2, p0, Lelv;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lelv;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgxb;I[B[B[B[B)V
    .locals 0

    iput p2, p0, Lelv;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lelv;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ContentResolver;
    .locals 1

    iget v0, p0, Lelv;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lelv;->b:Ljava/lang/Object;

    check-cast v0, Lgxb;

    iget-object v0, v0, Lgxb;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lelv;->b:Ljava/lang/Object;

    check-cast v0, Lgxb;

    iget-object v0, v0, Lgxb;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lelv;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lelv;->a()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lelv;->a()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
