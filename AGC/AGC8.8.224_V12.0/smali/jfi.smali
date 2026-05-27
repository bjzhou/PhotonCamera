.class public final Ljfi;
.super Ljoc;

# interfaces
.implements Ljdf;
.implements Ljdg;


# static fields
.field private static final h:Ljfc;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/Set;

.field public final d:Ljge;

.field public e:Ljnz;

.field public f:Ljep;

.field public final g:Ljfc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljny;->a:Ljfc;

    sput-object v0, Ljfi;->h:Ljfc;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljge;)V
    .locals 1

    sget-object v0, Ljfi;->h:Ljfc;

    invoke-direct {p0}, Ljoc;-><init>()V

    iput-object p1, p0, Ljfi;->a:Landroid/content/Context;

    iput-object p2, p0, Ljfi;->b:Landroid/os/Handler;

    iput-object p3, p0, Ljfi;->d:Ljge;

    iget-object p1, p3, Ljge;->b:Ljava/util/Set;

    iput-object p1, p0, Ljfi;->c:Ljava/util/Set;

    iput-object v0, p0, Ljfi;->g:Ljfc;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iget-object p1, p0, Ljfi;->e:Ljnz;

    invoke-interface {p1}, Ljnz;->j()V

    return-void
.end method

.method public final b()V
    .locals 8

    iget-object v0, p0, Ljfi;->e:Ljnz;

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    move-object v3, v0

    check-cast v3, Ljof;

    iget-object v3, v3, Ljof;->a:Ljge;

    iget-object v3, v3, Ljge;->a:Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "<<default account>>"

    if-nez v3, :cond_0

    :try_start_1
    new-instance v3, Landroid/accounts/Account;

    const-string v5, "com.google"

    invoke-direct {v3, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v5, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    check-cast v4, Ljgb;

    iget-object v4, v4, Ljgb;->c:Landroid/content/Context;

    invoke-static {v4}, Ljba;->c(Landroid/content/Context;)Ljba;

    move-result-object v4

    invoke-virtual {v4}, Ljba;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    new-instance v5, Ljhg;

    move-object v6, v0

    check-cast v6, Ljof;

    iget-object v6, v6, Ljof;->t:Ljava/lang/Integer;

    invoke-static {v6}, Ljhp;->ab(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    invoke-direct {v5, v7, v3, v6, v4}, Ljhg;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    check-cast v0, Ljgb;

    invoke-virtual {v0}, Ljgb;->u()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ljod;

    new-instance v3, Ljog;

    invoke-direct {v3, v1, v5}, Ljog;-><init>(ILjhg;)V

    invoke-virtual {v0}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v4

    invoke-static {v4, v3}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v4, p0}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v4}, Lcbe;->z(ILandroid/os/Parcel;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v3, "SignInClientImpl"

    const-string v4, "Remote service probably died when signIn is called"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    new-instance v4, Ljoh;

    new-instance v5, Ljby;

    const/16 v6, 0x8

    invoke-direct {v5, v6, v2}, Ljby;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {v4, v1, v5, v2}, Ljoh;-><init>(ILjby;Ljhh;)V

    invoke-virtual {p0, v4}, Ljoc;->c(Ljoh;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v1

    const-string v1, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    invoke-static {v3, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final c(Ljoh;)V
    .locals 3

    iget-object v0, p0, Ljfi;->b:Landroid/os/Handler;

    new-instance v1, Lioi;

    const/16 v2, 0xf

    invoke-direct {v1, p0, p1, v2}, Lioi;-><init>(Ljfi;Ljoh;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final i(Ljby;)V
    .locals 1

    iget-object v0, p0, Ljfi;->f:Ljep;

    invoke-virtual {v0, p1}, Ljep;->b(Ljby;)V

    return-void
.end method
