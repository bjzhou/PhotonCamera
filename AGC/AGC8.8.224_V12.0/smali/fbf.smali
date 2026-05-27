.class public final synthetic Lfbf;
.super Ljava/lang/Object;

# interfaces
.implements Ljon;


# instance fields
.field public final synthetic a:Lfbg;

.field public final synthetic b:Lnph;


# direct methods
.method public synthetic constructor <init>(Lfbg;Lnph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfbf;->a:Lfbg;

    iput-object p2, p0, Lfbf;->b:Lnph;

    return-void
.end method


# virtual methods
.method public final a(Ljot;)V
    .locals 5

    iget-object v0, p0, Lfbf;->a:Lfbg;

    iget-object v1, p0, Lfbf;->b:Lnph;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljot;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;
    :try_end_0
    .catch Ljos; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1}, Lfbg;->d(Landroid/location/Location;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iput-object p1, v0, Lfbg;->f:Landroid/location/Location;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lfbg;->g:J

    invoke-virtual {v1, p1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lfbg;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v3, "getCurrentLocation meet exception!"

    const/16 v4, 0x80f

    invoke-static {v0, v3, v4, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method
