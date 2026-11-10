package com.hinnka.mycamera.ui.components

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.selection.selectable
import androidx.compose.foundation.selection.selectableGroup
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.RadioButton
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.unit.dp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.ml.HfModelSource

/** Download source choice for models hosted on Hugging Face. */
@Composable
fun HfModelSourcePicker(
    source: HfModelSource,
    onSourceChange: (HfModelSource) -> Unit,
    modifier: Modifier = Modifier,
) {
    Column(modifier = modifier) {
        Text(
            text = stringResource(R.string.model_download_source),
            style = MaterialTheme.typography.labelLarge
        )
        Column(modifier = Modifier.selectableGroup()) {
            HfModelSource.entries.forEach { option ->
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(40.dp)
                        .selectable(
                            selected = option == source,
                            onClick = { onSourceChange(option) },
                            role = Role.RadioButton
                        ),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    RadioButton(selected = option == source, onClick = null)
                    Spacer(modifier = Modifier.width(8.dp))
                    Text(
                        text = stringResource(
                            when (option) {
                                HfModelSource.HUGGING_FACE -> R.string.model_download_source_hugging_face
                                HfModelSource.HF_MIRROR -> R.string.model_download_source_mirror
                            }
                        ),
                        style = MaterialTheme.typography.bodyMedium
                    )
                }
            }
        }
    }
}
