.class public final Lazj;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static final b(Lbbx;I)Lbbr;
    .locals 2

    new-instance v0, Lbbr;

    iget-object v1, p0, Lbbx;->a:Ljava/lang/String;

    iget p0, p0, Lbbx;->b:I

    invoke-direct {v0, v1, p0, p1}, Lbbr;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method
