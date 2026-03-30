.class public final Lrqf;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field a:Z

.field final synthetic b:Lcom/google/ar/core/InstallActivity;


# direct methods
.method public constructor <init>(Lcom/google/ar/core/InstallActivity;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lrqf;->b:Lcom/google/ar/core/InstallActivity;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput-boolean p1, p0, Lrqf;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lrqg;)V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lrqf;->b:Lcom/google/ar/core/InstallActivity;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Lrqf;->a:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_1
    iget-object v1, p0, Lrqf;->b:Lcom/google/ar/core/InstallActivity;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, p1}, Lcom/google/ar/core/InstallActivity;->-$$Nest$fputlastEvent(Lcom/google/ar/core/InstallActivity;Lrqg;)V

    sget-object v1, Lcom/google/ar/core/ArCoreApk$UserMessageType;->APPLICATION:Lcom/google/ar/core/ArCoreApk$UserMessageType;

    nop

    sget-object v1, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lrqg;->ordinal()I

    move-result p1

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_5

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    if-eq p1, v1, :cond_4

    nop

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    if-eq p1, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget-object p1, p0, Lrqf;->b:Lcom/google/ar/core/InstallActivity;

    nop

    nop

    nop

    invoke-static {p1}, Lcom/google/ar/core/InstallActivity;->-$$Nest$fgetwaitingForCompletion(Lcom/google/ar/core/InstallActivity;)Z

    move-result p1

    nop

    if-nez p1, :cond_3

    nop

    nop

    sget-object p1, Lrpx;->a:Lrpx;

    nop

    nop

    iget-boolean p1, p1, Lrpx;->e:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_3

    nop

    nop

    nop

    iget-object p1, p0, Lrqf;->b:Lcom/google/ar/core/InstallActivity;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Lcom/google/ar/core/InstallActivity;->-$$Nest$mcloseInstaller(Lcom/google/ar/core/InstallActivity;)V

    :cond_3
    iget-object p1, p0, Lrqf;->b:Lcom/google/ar/core/InstallActivity;

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    invoke-static {p1, v2}, Lcom/google/ar/core/InstallActivity;->-$$Nest$mfinishWithFailure(Lcom/google/ar/core/InstallActivity;Ljava/lang/Exception;)V

    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    iget-object p1, p0, Lrqf;->b:Lcom/google/ar/core/InstallActivity;

    nop

    nop

    nop

    new-instance v2, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

    nop

    nop

    nop

    invoke-direct {v2}, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;-><init>()V

    invoke-static {p1, v2}, Lcom/google/ar/core/InstallActivity;->-$$Nest$mfinishWithFailure(Lcom/google/ar/core/InstallActivity;Ljava/lang/Exception;)V

    :goto_a
    iput-boolean v1, p0, Lrqf;->a:Z

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_5
    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lrqf;->b:Lcom/google/ar/core/InstallActivity;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Lrqf;->a:Z

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_0
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    iput-boolean v1, p0, Lrqf;->a:Z

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lrqf;->b:Lcom/google/ar/core/InstallActivity;

    nop

    nop

    sget-object v2, Lrqg;->b:Lrqg;

    nop

    invoke-static {v1, v2}, Lcom/google/ar/core/InstallActivity;->-$$Nest$fputlastEvent(Lcom/google/ar/core/InstallActivity;Lrqg;)V

    iget-object p0, p0, Lrqf;->b:Lcom/google/ar/core/InstallActivity;

    nop

    nop

    nop

    invoke-static {p0, p1}, Lcom/google/ar/core/InstallActivity;->-$$Nest$mfinishWithFailure(Lcom/google/ar/core/InstallActivity;Ljava/lang/Exception;)V

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_7
    goto/32 :goto_9

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method
